﻿using System.Collections.Generic;
using System.Web.Http;
using DataAccessLayer.Entities;
using BusinessLayer.Repositories;

namespace WebApi.Controllers
{
    public class AdvertiseController : ApiController
    {
        private readonly IRepository<blog> _blogRepo;
        public AdvertiseController(IRepository<blog> blogRepo)
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
