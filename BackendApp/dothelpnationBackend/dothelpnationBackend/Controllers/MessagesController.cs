using BusinessLayer.DTOs;
using BusinessLayer.Repositories;
using DataAccessLayer.Entities;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using AutoMapper;
using System.Globalization;
using System;
using Microsoft.AspNet.SignalR;
using System.Configuration;
using BusinessLayer.PushService;

namespace dothelpnationBackend.Controllers
{
    [System.Web.Http.Authorize]
    public class MessagesController : ApiController
    {
        private readonly IRepository<ads_messages> _messagesRepo;
        private readonly IRepository<user> _userRepo;
        private readonly IRepository<device_tokens> _deviceTokensRepo;
        private readonly IPush _pushNotification;

        public MessagesController(IRepository<ads_messages> messagesRepo, IRepository<user> userRepo , IRepository<device_tokens> deviceTokenRepo , IPush push)
        {
            _messagesRepo = messagesRepo;
            _deviceTokensRepo = deviceTokenRepo;
            _userRepo = userRepo;
            _pushNotification = push;
        }

        [HttpGet]
        [Route("api/GetUserChat")]
        public IEnumerable<singleChatDTO> GetInitialPeerToPeerChat([FromUri] string email, [FromUri] int? target_id)
        {
            var peerToPeerChats = new List<singleChatDTO>();
            var userId = _userRepo.Get().Where(x => x.email == email).FirstOrDefault()?.id;

            var froms = _messagesRepo.Get()
                .Where(x => x.to_user_id == userId && x.from_user_id == target_id)
                .ToList();

            var tos = _messagesRepo.Get()
                .Where(x => x.from_user_id == userId && x.to_user_id == target_id) // I sent the message 
                .ToList();

            for (int i = 0; i < froms.Count; i++)
            {
                peerToPeerChats.Add(new singleChatDTO()
                {
                    userId = froms[i].from_user_id,
                    message = froms[i].info,
                    sendDate = froms[i].date.Value.Date,
                    showMessage = true,
                    time = froms[i].time,
                    time_span = DateTime.ParseExact(froms[i].time, "hh:mm:ss tt", CultureInfo.InvariantCulture).TimeOfDay
                });
            }

            for (int i = 0; i < tos.Count; i++)
            {
                peerToPeerChats.Add(new singleChatDTO()
                {
                    userId = tos[i].from_user_id,
                    message = tos[i].info,
                    sendDate = tos[i].date.Value.Date,
                    showMessage = true,
                    time = tos[i].time,
                    time_span = DateTime.ParseExact(tos[i].time , "hh:mm:ss tt", CultureInfo.InvariantCulture).TimeOfDay
                });
            }

            var p2pchatList = peerToPeerChats.OrderBy(x => x.sendDate).ThenBy(x => x.time_span);
            p2pchatList.ToList().ForEach(x => { x.time = x.time.Remove(5, 3); });
            return p2pchatList;
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
                .ToList();

            var tos = _messagesRepo.Get()
                .Where(x => x.from_user_id == userId) // I sent the message 
                .ToList();

            foreach (var from_message in froms)
            {
                chats.Add(new chatDTO()
                {
                    id = from_message.id,
                    ad_id = from_message.ad_id,
                    message = from_message.info,
                    destination_user_id = (int)from_message.from_user_id,
                    date = from_message.date,
                    time = from_message.time,
                    stuts = from_message.stuts,
                    source = "from"
                });
            }

            foreach (var to_message in tos)
            {
                chats.Add(new chatDTO()
                {
                    id = to_message.id,
                    ad_id = to_message.ad_id,
                    message = to_message.info,
                    destination_user_id = (int)to_message.to_user_id,
                    date = to_message.date,
                    time = to_message.time,
                    stuts = to_message.stuts,
                    source = "to"
                });
            }

            chats = chats.GroupBy(x => x.destination_user_id)
                .Select(x => x.OrderByDescending(z => z.date).ThenByDescending(y => y.time).FirstOrDefault())
                .ToList();


            foreach (var message in chats)
            {
                var fromUserData = _userRepo.Get().Where(x => x.id == message.destination_user_id).FirstOrDefault();
                message.time_span = DateTime.ParseExact(message.time, "hh:mm:ss tt", CultureInfo.InvariantCulture).TimeOfDay;
                message.time = message.time.Remove(5, 3);
                message.destination_user_name = fromUserData.name;
                message.destination_user_email = fromUserData.email;
                message.destination_user_photo = fromUserData.photo;
            }

            return chats.OrderByDescending(x => x.date).ThenByDescending(x => x.time_span);
        }


        [HttpGet]
        [Route("api/GetUnreadChatsNumber")]
        public int GetUnreadChatsNumber([FromUri] string email)
        {
            var chats = new List<chatDTO>();
            var userId = _userRepo.Get().Where(x => x.email == email).FirstOrDefault()?.id;

            var froms = _messagesRepo.Get()
                .Where(x => x.to_user_id == userId)
                .ToList();

            var tos = _messagesRepo.Get()
                .Where(x => x.from_user_id == userId) // I sent the message 
                .ToList();

            foreach (var from_message in froms)
            {
                chats.Add(new chatDTO()
                {
                    id = from_message.id,
                    ad_id = from_message.ad_id,
                    message = from_message.info,
                    destination_user_id = (int)from_message.from_user_id,
                    date = from_message.date,
                    time = from_message.time,
                    stuts = from_message.stuts,
                    source = "from"
                });
            }

            foreach (var to_message in tos)
            {
                chats.Add(new chatDTO()
                {
                    id = to_message.id,
                    ad_id = to_message.ad_id,
                    message = to_message.info,
                    destination_user_id = (int)to_message.to_user_id,
                    date = to_message.date,
                    time = to_message.time,
                    stuts = to_message.stuts,
                    source = "to"
                });
            }


            var messagesCount = chats.GroupBy(x => x.destination_user_id)
                .Select(x => x.OrderByDescending(z => z.date).ThenByDescending(y => y.time).FirstOrDefault()).Count(x => x.stuts == 1 && x.source == "from");

            return messagesCount;
        }


        [HttpGet]
        [Route("api/SetMesssagesAsRead")]
        public bool SetMesssagesAsRead([FromUri] string email , [FromUri] string from_user_id)
        {
            var userId = _userRepo.Get().Where(x => x.email == email).FirstOrDefault()?.id;
            int fromUserId = int.Parse(from_user_id);

            var lastMessage = _messagesRepo.Get()
                .Where(x => x.from_user_id == fromUserId && x.to_user_id == userId)
                .OrderByDescending(x => x.date).ThenByDescending(x => x.time).FirstOrDefault();
            lastMessage.stuts = 2;

            var IsUpdated = _messagesRepo.Update(lastMessage);

            return (IsUpdated != null) ? true : false;
        }


        [HttpPost]
        [Route("api/SendMessages")]
        public void SendMessageToClient(sentMessagesDTO sentMessage)
        {
            var FCMServerApiKey = ConfigurationManager.AppSettings["FCMServerApiKey"];
            var FCMSenderId = ConfigurationManager.AppSettings["FCMSenderId"];

            var receiverId = long.Parse(sentMessage.receiverId);
            var senderUser = _userRepo.Get().Where(x => x.email == sentMessage.senderEmail).FirstOrDefault();
            var fromUserId = senderUser.id;
            var senderName = senderUser.name;
            var senderEmail = senderUser.email;
            var senderPhoto = senderUser.photo;
            var receiverDeviceTokens = _deviceTokensRepo.Get().Where(x => x.user_id == receiverId).ToList();
            var ad_id = sentMessage.ad_id != null && sentMessage.ad_id != "null" ? int.Parse(sentMessage.ad_id) : 0;
            var pushNotificationTitle = senderName + " " + "sent you a message";

            // Repos ..
            _messagesRepo.Insert(new ads_messages()
            {
                date = DateTime.Parse(sentMessage.sendDate),
                from_user_id = (int)fromUserId,
                to_user_id = int.Parse(sentMessage.receiverId),
                info = sentMessage.message,
                title = "message",
                type = "message",
                stuts = 1,
                parent_id = 2,
                time = sentMessage._time
            });

            // Hubs .. 
            var chatHub = GlobalHost.ConnectionManager.GetHubContext<Hubs.chatHub>();
            chatHub.Clients.Group(sentMessage.receiverId.ToString()).receiveMessage(new
            {
                ad_id = ad_id,
                userId = fromUserId,
                date = sentMessage.sendDate,
                from_user_id = fromUserId,
                to_user_id = sentMessage.receiverId.ToString(),
                showMessage = true,
                senderName = senderName,
                senderPhoto = senderPhoto,
                senderEmail = senderEmail,
                message = sentMessage.message,
                sendDate = sentMessage.sendDate,
                time = sentMessage.time
            });

            // Push Notifications ..
            foreach (var token in receiverDeviceTokens)
            {
                if (token.device_type.ToLower() == "android")
                {
                    _pushNotification.SendNotificationsToFCM(FCMServerApiKey, FCMSenderId, token.device_token, sentMessage.message, pushNotificationTitle, "chatMessage");
                }
            }
        }


    }
}
