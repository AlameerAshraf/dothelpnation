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
        private readonly IRepository<device_tokens> _tokensRepo;
        private readonly IRepository<user_settings> _userSettingsRepo;

        public UserController(IRepository<user> userRepo , IRepository<device_tokens> tokensRepo , IRepository<user_settings> userSettings)
        {
            _userRepo = userRepo;
            _tokensRepo = tokensRepo;
            _userSettingsRepo = userSettings;
        }


        [HttpPost]
        [Route("api/IsUserExisted")]
        public bool ChekUserExistance([FromUri]string Email)
        {
            var User = _userRepo.Get().Where(x => x.email == Email).FirstOrDefault();
            return User != null ? true : false;
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
            var IsExisted = _userRepo.Get().Where(x => x.email == userData.email).FirstOrDefault();
            if (IsExisted != null)
            {
                return true;
            }
            else
            {
                var InsertedUser = _userRepo.Insert(userData);
                return InsertedUser != null ? true : false;
            }
        }

        [HttpGet]
        [Route("api/AddDeviceTokens")]
        public bool SaveUserDeviceTokens([FromUri] string deviceToken , string email , string deviceType)
        {
            var userId = _userRepo.Get().Where(x => x.email == email).FirstOrDefault()?.id;

            var IsInserted = _tokensRepo.Insert(new device_tokens()
            {
                user_id = (int)userId,
                device_token = deviceToken,
                device_type = deviceType
            });

            return IsInserted != null ? true : false ;
        }

        [HttpGet]
        [Route("api/GetUserSettings")]
        public user_settings GetUserSettings([FromUri] string email)
        {
            var userId = _userRepo.Get().Where(x => x.email == email).FirstOrDefault()?.id;
            return _userSettingsRepo.Get().Where(x => x.user_id == userId).FirstOrDefault();
        }

        [HttpGet]
        [Route("api/GetUsers")]
        public IEnumerable<user> GetAllUsers()
        {
            return _userRepo.Get();
        }
    }
}
