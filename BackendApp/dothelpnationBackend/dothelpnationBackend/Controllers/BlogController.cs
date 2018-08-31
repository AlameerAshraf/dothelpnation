using BusinessLayer.Repositories;
using DataAccessLayer.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace dothelpnationBackend.Controllers
{
    [Authorize]
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
    }
}
