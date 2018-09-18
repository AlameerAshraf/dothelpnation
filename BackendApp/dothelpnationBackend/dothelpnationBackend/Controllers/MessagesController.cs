using BusinessLayer.DTOs;
using BusinessLayer.Repositories;
using DataAccessLayer.Entities;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using AutoMapper;

namespace dothelpnationBackend.Controllers
{
    public class MessagesController : ApiController
    {
        private readonly IRepository<ads_messages> _messagesRepo;
        private readonly IRepository<user> _userRepo;

        public MessagesController(IRepository<ads_messages> messagesRepo , IRepository<user> userRepo)
        {
            _messagesRepo = messagesRepo;
            _userRepo = userRepo;
        }


        [HttpGet]
        [Route("api/GetChatList")]
        public IEnumerable<chatDTO> GetInitialChatList([FromUri] string email)
        {
            // All users that contacts to this user (Dicticted) ..
            var userId = _userRepo.Get().Where(x => x.email == email).FirstOrDefault()?.id;
            var contactsSources = _messagesRepo.Get()
                .Where(x => x.to_user_id == userId)
                .GroupBy(x => x.from_user_id)
                .Select(x => x.OrderByDescending(z => z.date).FirstOrDefault()).ToList();

            var MappedChatList = Mapper.Map<IEnumerable<chatDTO>>(contactsSources);

            foreach (var message in MappedChatList)
            {
                var fromUserData = _userRepo.Get().Where(x => x.id == message.from_user_id).FirstOrDefault();
                message.from_user_name = fromUserData.name;
                message.from_user_email = fromUserData.email;
                message.from_user_photo = fromUserData.photo;
            }


            return MappedChatList.OrderByDescending(x => x.date).ThenByDescending(x => x.time);
        }


    }
}
