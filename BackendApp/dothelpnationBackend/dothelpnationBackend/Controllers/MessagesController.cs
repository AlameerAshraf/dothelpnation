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

        public MessagesController(IRepository<ads_messages> messagesRepo, IRepository<user> userRepo)
        {
            _messagesRepo = messagesRepo;
            _userRepo = userRepo;
        }

        [HttpGet]
        [Route("api/GetUserChat")]
        public IEnumerable<singleChatDTO> GetInitialPeerToPeerChat([FromUri] string email, [FromUri] int? target_id)
        {
            var peerToPeerChats = new List<singleChatDTO>();
            var userId = _userRepo.Get().Where(x => x.email == email).FirstOrDefault()?.id;

            var froms = _messagesRepo.Get()
                .Where(x => x.to_user_id == userId && x.from_user_id == target_id)
                .GroupBy(x => x.from_user_id)
                .Select(x => x.OrderByDescending(z => z.date).FirstOrDefault()).ToList();

            var tos = _messagesRepo.Get()
                .Where(x => x.from_user_id == userId && x.to_user_id == target_id) // I sent the message 
                .GroupBy(x => x.to_user_id) // the user the message was sent to 
                .Select(x => x.OrderByDescending(z => z.date).FirstOrDefault()).ToList();

            for (int i = 0; i < froms.Count; i++)
            {
                peerToPeerChats.Add(new singleChatDTO()
                {
                    userId = froms[i].from_user_id,
                    message = froms[i].info,
                    sendDate = froms[i].date,
                    showMessage = true,
                    time = froms[i].time.Remove(5, 3)
                });
            }

            for (int i = 0; i < tos.Count; i++)
            {
                peerToPeerChats.Add(new singleChatDTO()
                {
                    userId = tos[i].from_user_id,
                    message = tos[i].info,
                    sendDate = tos[i].date,
                    showMessage = true,
                    time = tos[i].time.Remove(5, 3)
                });
            }

            return peerToPeerChats.OrderBy(x => x.sendDate).ThenBy(x => x.time);
        }



        [HttpGet]
        [Route("api/GetChatList")]
        public IEnumerable<chatDTO> GetInitialChatList([FromUri] string email)
        {

            // All chats combined from froms and tos messages .. 
            var chats = new List<chatDTO>();
            var userId = _userRepo.Get().Where(x => x.email == email).FirstOrDefault()?.id;

            var froms = _messagesRepo.Get()
                .Where(x => x.to_user_id == userId)
                .GroupBy(x => x.from_user_id)
                .Select(x => x.OrderByDescending(z => z.date).FirstOrDefault()).ToList();

            var tos = _messagesRepo.Get()
                .Where(x => x.from_user_id == userId) // I sent the message 
                .GroupBy(x => x.to_user_id) // the user the message was sent to 
                .Select(x => x.OrderByDescending(z => z.date).FirstOrDefault()).ToList();


            for (int i = 0; i < froms.Count; i++)
            {
                for (int j = 0; j < tos.Count; j++)
                {
                    if (froms[i].from_user_id == tos[j].to_user_id) // from user have been contacted by (me) , chack the message to push .. 
                    {
                        if (froms[i].date > tos[j].date)
                        {
                            chats.Add(new chatDTO()
                            {
                                id = froms[i].id,
                                ad_id = froms[i].ad_id,
                                message = froms[i].info,
                                destination_user_id = (int)froms[i].from_user_id,
                                date = froms[i].date,
                                time = froms[i].time,
                                stuts = froms[i].stuts
                            });
                        }
                        else
                        {
                            chats.Add(new chatDTO()
                            {
                                id = tos[j].id,
                                ad_id = tos[j].ad_id,
                                message = tos[j].info,
                                destination_user_id = (int)tos[j].to_user_id,
                                date = tos[j].date,
                                time = tos[j].time,
                                stuts = tos[j].stuts
                            });
                        }
                    }
                    else
                    {
                        chats.Add(new chatDTO()
                        {
                            id = froms[i].id,
                            ad_id = froms[i].ad_id,
                            message = froms[i].info,
                            destination_user_id = (int)froms[i].from_user_id,
                            date = froms[i].date,
                            time = froms[i].time,
                            stuts = froms[i].stuts
                        });
                    }
                }
            }

            foreach (var message in chats)
            {
                var fromUserData = _userRepo.Get().Where(x => x.id == message.destination_user_id).FirstOrDefault();
                message.time = message.time.Remove(5, 3);
                message.destination_user_name = fromUserData.name;
                message.destination_user_email = fromUserData.email;
                message.destination_user_photo = fromUserData.photo;
            }

            return chats.OrderBy(x => x.date).ThenBy(x => x.time);
        }


    }
}
