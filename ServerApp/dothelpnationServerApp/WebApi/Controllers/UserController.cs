using System.Web.Http;
using BusinessLayer.Repositories;
using DataAccessLayer.Entities;

namespace WebApi.Controllers
{
    public class UserController : ApiController
    {
        private readonly IRepository<user> _userRepo ;
        public UserController(IRepository<user> userRepo)
        {
            _userRepo = userRepo;
        }
    }
}
