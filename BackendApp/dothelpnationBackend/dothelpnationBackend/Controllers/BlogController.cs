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

        public BlogController(IRepository<blog> blogRepo , IRepository<blog_sections> blogSectionsRepo, IRepository<place> placeRepo ,
            IRepository<user> userRepo , IRepository<rating> rateRepo)
        {
            _blogRepo = blogRepo;
            _blogSectionsRepo = blogSectionsRepo;
            _placeRepo = placeRepo;
            _userRepo = userRepo;
            _rateRepo = rateRepo;
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
                blog.section_name = GetSectionNameById((int)blog.section_id);
                blog.user_name = GetUserNameById((int)blog.user_id);
                blog.place_name = GetPlaceById((int)blog.place_id);
                blog.city_name = GetPlaceById((int)blog.city_id);
            }

            return MappedBlogs;

        }

        [HttpGet]
        [Route("api/GetBlogs")]
        public IEnumerable<blogDTO> GetAllBlogs()
        {
            var blogs = _blogRepo.Get();
            var MappedBlogs = Mapper.Map<IEnumerable<blogDTO>>(blogs);

            foreach (var blog in MappedBlogs)
            {
                blog.time_span = DateTime.ParseExact(blog.time , "hh:mm:ss tt", CultureInfo.InvariantCulture).TimeOfDay;
                blog.section_name = GetSectionNameById((int)blog.section_id);
                blog.user_name = GetUserNameById((int)blog.user_id);
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
            [FromUri] string email )
        {
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
                    photoPath = "http://b86d33e0.ngrok.io" + "/BlogPhotos/" + fileName;
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
                vists = 0
            };
            var IsInserted = _blogRepo.Insert(newBlog);


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
            var userId = _userRepo.Get().Where(x => x.email == email).Single()?.id;

            if (userId != null)
            {
                var IsInserted = _rateRepo.Insert(new rating() {
                    user_id = (int) userId , 
                    post_id = blogId ,
                    stars = stars,
                    date = DateTime.Now,
                    time = DateTime.Now.ToString("hh:mm:ss tt")
                });

                return IsInserted != null  ? true : false;
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

        private string GetUserNameById(int userId)
        {
            return _userRepo.Get().Where(x => x.id == userId).Single()?.name;
        }

        private string GetPlaceById(int placeId)
        {
            return _placeRepo.Get().Where(x => x.id == placeId).Single()?.name;
        }

    }
}

