using BusinessLayer.Repositories;
using DataAccessLayer.Entities;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;

namespace dothelpnationBackend.Controllers
{
    //[Authorize]
    public class BlogController : ApiController
    {
        private readonly IRepository<blog> _blogRepo;

        public BlogController(IRepository<blog> blogRepo)
        {
            _blogRepo = blogRepo;
        }


        [HttpGet]
        [Route("api/GetBlogs")]
        public IEnumerable<blog> GetAllBlogs()
        {
            return _blogRepo.Get();
        }

        [HttpPost]
        [Route("api/CraeteNewBlog")]
        public bool UploadFile([FromUri] int section_id , 
            [FromUri] int city_id,
            [FromUri] int place_id, 
            [FromUri] string title,
            [FromUri] string description,
            [FromUri] int userId )
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
                    photoPath = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority) + "/BlogPhotos/" + fileName;
                    ImageUploaded = true;
                }
            }
            catch(Exception ex)
            {
                ImageUploaded = false;
            }


            var newBlog = new blog()
            {
                user_id = userId,
                publish_date = DateTime.Now,
                time = DateTime.Now.ToString("h:mm:ss tt"),
                section_id = section_id,
                city_id = city_id,
                place_id = place_id,
                title = title,
                content = description,
                photo = photoPath
            };
            var IsInserted = _blogRepo.Insert(newBlog);


            return (IsInserted != null && ImageUploaded == true) ? true : false;
        }


        private string convertBytes(string originalString)
        {
            byte[] byt = System.Text.Encoding.UTF8.GetBytes(originalString);
            // convert the byte array to a Base64 string
            return Convert.ToBase64String(byt);
        }
    }
}

