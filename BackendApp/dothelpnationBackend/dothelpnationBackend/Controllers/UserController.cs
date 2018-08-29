using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using BusinessLayer.Repositories;
using DataAccessLayer.Entities;

namespace dothelpnationBackend.Controllers
{
    public class UserController : ApiController
    {
        private readonly IRepository<user> _userRepo;

        public UserController(IRepository<user> userRepo)
        {
            _userRepo = userRepo;
        }


        [HttpGet]
        [Route("api/GetUser/{id}")]
        public user GetUserData(int id)
        {
            return _userRepo.GetByIdentifier(id);
        }

        [HttpGet]
        [Route("api/GetLoginedUser")]
        public user GetLoginedUserData([FromUri]string Email)
        {
            return _userRepo.Get().Where(x => x.email == Email).FirstOrDefault();
        }

        [HttpPost]
        [Route("api/CraeteUser")]
        public bool AddNewUser([FromBody] user userData)
        {
            var InsertedUser = _userRepo.Insert(userData);
            return InsertedUser != null ? true : false;
        }

        [HttpGet]
        [Route("api/GetUsers")]
        public IEnumerable<user> GetAllUsers()
        {
            return _userRepo.Get();
        }
    }
}
