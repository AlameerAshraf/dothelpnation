using BusinessLayer.Repositories;
using DataAccessLayer.Entities;
using System.Collections.Generic;
using BusinessLayer.DTOs;
using System.Web.Http;
using System.Linq;
using AutoMapper;

namespace dothelpnationBackend.Controllers
{
    public class SearchController : ApiController
    {
        private readonly IRepository<blog_sections> _blogSectionsRepo;
        private readonly IRepository<place> _placeRepo;

        public SearchController(IRepository<blog_sections> blogSectionsRepo , IRepository<place> placeRepo )
        {
            _blogSectionsRepo = blogSectionsRepo;
            _placeRepo = placeRepo;
        }

        [HttpGet]
        [Route("api/GetListOfBlogSections")]
        public IEnumerable<blog_sectionDTO> GetAllBlogSections(string site_lang)
        {
            var blogSections = _blogSectionsRepo.Get().Where(x => x.langkey == site_lang).ToList();
            var MappedBlogSection = Mapper.Map<IEnumerable<blog_sectionDTO>>(blogSections);
            return MappedBlogSection;
        }

        [HttpGet]
        [Route("api/GetListOfMainCities")]
        public IEnumerable<place> GetAllMohafazat()
        {
            var places = _placeRepo.Get().Where(x => x.mohafza_id == null).ToList();
            return places; 
        }

        [HttpGet]
        [Route("api/GetListOfSubCities")]
        public IEnumerable<place> GetAllSubCities([FromUri] int? MohafzaId)
        {
            List<place> places = null;
            if (MohafzaId != null)
            {
                places = _placeRepo.Get().Where(x => x.mohafza_id == MohafzaId).ToList();
            }
            else
            {
                places = _placeRepo.Get().ToList();
            }
            return places;
        }


    }
}
