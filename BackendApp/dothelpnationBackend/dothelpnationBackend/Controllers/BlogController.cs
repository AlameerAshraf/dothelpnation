using BusinessLayer.Repositories;
using BusinessLayer.DTOs;
using DataAccessLayer.Entities;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using AutoMapper;
using System.Web;
using System.Web.Http;
using System.Globalization;
using BusinessLayer.PushService;
using System.Configuration;

namespace dothelpnationBackend.Controllers
{
    //[Authorize]
    public class BlogController : ApiController
    {
        private readonly IRepository<blog> _blogRepo;
        private readonly IRepository<blog_sections> _blogSectionsRepo;
        private readonly IRepository<place> _placeRepo;
        private readonly IRepository<user> _userRepo;
        private readonly IRepository<rating> _rateRepo;
        private readonly IRepository<device_tokens> _deviceTokensRepo;
        private readonly IPush _pushNotification;


        public BlogController(IRepository<blog> blogRepo , IRepository<blog_sections> blogSectionsRepo, IRepository<place> placeRepo ,
            IRepository<user> userRepo , IRepository<rating> rateRepo, IPush push , IRepository<device_tokens> deviceTokenRepo)
        {
            _blogRepo = blogRepo;
            _blogSectionsRepo = blogSectionsRepo;
            _deviceTokensRepo = deviceTokenRepo;
            _placeRepo = placeRepo;
            _userRepo = userRepo;
            _rateRepo = rateRepo;
            _pushNotification = push;
        }


        [HttpGet]
        [Route("api/SearchBlogs")]
        public IEnumerable<blogDTO> SearchAllMatchingBlogs([FromUri] string BlogFilter ,
            [FromUri] string CityFilter ,
            [FromUri] string PlaceFilter ,
            [FromUri] string SearchFilter)
        {
            var blogs = _blogRepo.Get().ToList();
            if (!String.IsNullOrEmpty(BlogFilter))
            {
                var BlogTypeId = int.Parse(BlogFilter);
                blogs = blogs.Where(x => x.section_id == BlogTypeId).ToList();
            }
            if (!String.IsNullOrEmpty(CityFilter))
            {
                var CityId = int.Parse(CityFilter);
                blogs = blogs.Where(x => x.city_id == CityId).ToList();
            }
            if (!String.IsNullOrEmpty(PlaceFilter))
            {
                var PlaceId = int.Parse(PlaceFilter);
                blogs = blogs.Where(x => x.place_id == PlaceId).ToList();
            }
            if (!String.IsNullOrEmpty(SearchFilter))
            {
                blogs = blogs.Where(x => x.content.Contains(SearchFilter) || x.title.Contains(SearchFilter)).ToList();
            }

            var MappedBlogs = Mapper.Map<IEnumerable<blogDTO>>(blogs);

            foreach (var blog in MappedBlogs)
            {
                blog.time_span = DateTime.ParseExact(blog.time, "hh:mm:ss tt", CultureInfo.InvariantCulture).TimeOfDay;
                blog.section_name = GetSectionNameById((int)blog.section_id);
                blog.user_name = GetUserData((int)blog.user_id).name;
                blog.user_email = GetUserData((int)blog.user_id).email;
                blog.place_name = GetPlaceById((int)blog.place_id);
                blog.city_name = GetPlaceById((int)blog.city_id);
            }

            return MappedBlogs.OrderByDescending(x => x.publish_date).ThenByDescending(x => x.time);

        }

        [HttpGet]
        [Route("api/GetBlogs")]
        public IEnumerable<blogDTO> GetAllBlogs([FromUri] int Def_City_id)
        {
            var blogs = _blogRepo.Get().Where(x => x.city_id == Def_City_id).ToList();
            var MappedBlogs = Mapper.Map<IEnumerable<blogDTO>>(blogs);

            foreach (var blog in MappedBlogs)
            {
                blog.time_span = DateTime.ParseExact(blog.time , "hh:mm:ss tt", CultureInfo.InvariantCulture).TimeOfDay;
                blog.section_name = GetSectionNameById((int)blog.section_id);
                blog.user_name = GetUserData((int)blog.user_id).name;
                blog.user_email = GetUserData((int)blog.user_id).email;
                blog.place_name = GetPlaceById((int)blog.place_id);
                blog.city_name = GetPlaceById((int)blog.city_id);
            }

            return MappedBlogs.OrderByDescending(x => x.publish_date).ThenByDescending(x => x.time);
        }

        [HttpPost]
        [Route("api/CraeteNewBlog")]
        public bool UploadFile([FromUri] int section_id , 
            [FromUri] int city_id,
            [FromUri] int place_id, 
            [FromUri] string title,
            [FromUri] string description,
            [FromUri] string address,
            [FromUri] string email ,
            [FromUri] string map_latitude,
            [FromUri] string map_longitude)
        {
            var FCMServerApiKey = ConfigurationManager.AppSettings["FCMServerApiKey"];
            var FCMSenderId = ConfigurationManager.AppSettings["FCMSenderId"];

            var file = HttpContext.Current.Request.Files.Count > 0 ?
                HttpContext.Current.Request.Files[0] : null;
            var ImageUploaded = false;
            var photoPath = "";
            var photoName = "";
            try
            {
                if (file != null && file.ContentLength > 0)
                {
                    var fileName = photoName = Guid.NewGuid().ToString() + Path.GetExtension(file.FileName);

                    var path = Path.Combine(
                        HttpContext.Current.Server.MapPath("~/BlogPhotos"),
                        fileName
                    );

                    file.SaveAs(path);
                    //photoPath = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority) + "/BlogPhotos/" + fileName;
                    photoPath = "http://2dd513fb.ngrok.io" + "/BlogPhotos/" + fileName;
                    ImageUploaded = true;
                }
            }
            catch(Exception ex)
            {
                ImageUploaded = false;
            }


            var userId = _userRepo.Get().Where(x => x.email == email).Single()?.id;

            var newBlog = new blog()
            {
                user_id = (int) userId,
                publish_date = DateTime.Now,
                time = DateTime.Now.ToString("hh:mm:ss tt"),
                section_id = section_id,
                city_id = city_id,
                place_id = place_id,
                title = title,
                content = description,
                photo = photoPath ,
                address = address ,
                vists = 0 ,
                map_latitude = map_latitude ,
                map_longitude = map_longitude
            };
            var IsInserted = _blogRepo.Insert(newBlog);

            if(section_id == 2) // Blood donation 
            {
                var AllDeviceTokens = _deviceTokensRepo.Get().ToList();
                var CityName = _placeRepo.Get().Where(x => x.id == city_id).FirstOrDefault().name;
                string BloodDonationMessage = CityName + " " + "أحدهم بحاجة للدم الأن في";
                foreach (var token in AllDeviceTokens)
                {
                    _pushNotification.SendNotificationsToFCM(FCMServerApiKey, FCMSenderId, token.device_token, "", BloodDonationMessage , "BloodDonationNotification");
                }
            }


            return (IsInserted != null && ImageUploaded == true) ? true : false;
        }


        [HttpGet]
        [Route("api/ViewSingleBlog")]
        public singBlogViewDTO GetBlogData([FromUri] int blogId)
        {
            var blogData = _blogRepo.Get().Where(x => x.id == blogId).FirstOrDefault();
            var posterId = blogData.user_id;
            if(blogData != null)
            {
                var MappedBlog = Mapper.Map<singBlogViewDTO>(blogData);

                var blogPoster = _userRepo.Get().Where(x => x.id == posterId).FirstOrDefault();
                MappedBlog.user_id = blogPoster.id;
                MappedBlog.user_name = blogPoster.name;
                MappedBlog.user_email = blogPoster.email;
                MappedBlog.user_photo = blogPoster.photo;
                MappedBlog.section_name = _blogSectionsRepo.Get().Where(x => x.id == MappedBlog.section_id).Single()?.title;

                var singleBlogRate =  _rateRepo.Get()
                                                .Where(x => x.post_id == MappedBlog.id).ToList().Average(x => x.stars);

                MappedBlog.stars =  singleBlogRate == null ? 0 : singleBlogRate;


                return MappedBlog;
            }
            else
            {
                return new singBlogViewDTO();
            }
        }


        [HttpGet]
        [Route("api/RateBlog")]
        public bool RateBlog([FromUri] int blogId , [FromUri] string email , [FromUri] int stars)
        {
            var IsInserted = (object)null;
            var userId = _userRepo.Get().Where(x => x.email == email).Single()?.id;

            if (userId != null)
            {
                var IsRateExistedForUserAndBlog = _rateRepo.Get().Where(x => x.post_id == blogId && x.user_id == userId).FirstOrDefault();

                if (IsRateExistedForUserAndBlog == null)
                {
                    IsInserted = _rateRepo.Insert(new rating()
                    {
                        user_id = (int)userId,
                        post_id = blogId,
                        stars = stars,
                        date = DateTime.Now,
                        time = DateTime.Now.ToString("hh:mm:ss tt")
                    });
                }
                else
                {
                    IsRateExistedForUserAndBlog.stars = stars;
                    var IsUpdated = _rateRepo.Update(IsRateExistedForUserAndBlog);
                    return IsUpdated != null ? true : false;
                }

                return IsInserted != null ? true : false;
            }
            else
            {
                return false;
            }
        }


        // Private Metods 
        private string GetSectionNameById(int sectionId)
        {
            return _blogSectionsRepo.Get().Where(x => x.id == sectionId).Single()?.title;
        }

        private dynamic GetUserData(int userId)
        {
            var user = _userRepo.Get().Where(x => x.id == userId).Single();
            return new
            {
                email = user?.email,
                name = user?.name
            };
        }

        private string GetPlaceById(int placeId)
        {
            return _placeRepo.Get().Where(x => x.id == placeId).Single()?.name;
        }


    }
}

