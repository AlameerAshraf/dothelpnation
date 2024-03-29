﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer.Entities;

namespace BusinessLayer.DTOs
{
    public static class AutoMapperConfiguration
    {
        public static void Configure()
        {
            AutoMapper.Mapper.Initialize(cfg =>
            {
                cfg.CreateMap<blog_sections, blog_sectionDTO>();
                cfg.CreateMap<blog_sections, blog_sectionDTO>();

                cfg.CreateMap<blog, blogDTO>();
                cfg.CreateMap<blogDTO, blog>();

                cfg.CreateMap<blog, singBlogViewDTO>();
                cfg.CreateMap<singBlogViewDTO, blog>();

                cfg.CreateMap<ads_messages, chatDTO>();
                cfg.CreateMap<chatDTO, ads_messages>();
            });
        }
    }
}
