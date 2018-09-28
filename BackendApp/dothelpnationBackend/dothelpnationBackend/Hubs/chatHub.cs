using BusinessLayer.Repositories;
using DataAccessLayer.Entities;
using Microsoft.AspNet.SignalR;
using Autofac;
using System.Threading.Tasks;
using System.Linq;
using BusinessLayer.DTOs;
using System;
using System.Globalization;

namespace dothelpnationBackend.Hubs
{
    public class chatHub : Hub
    {
        private readonly ILifetimeScope _hubLifetimeScope;
        private readonly IRepository<ads_messages> _messagesRepo;
        private readonly IRepository<user> _userRepo;

        public chatHub(ILifetimeScope lifetimeScope)
        {
            // Create a lifetime scope for the hub.
            _hubLifetimeScope = lifetimeScope.BeginLifetimeScope();

            _messagesRepo = _hubLifetimeScope.Resolve<IRepository<ads_messages>>();
            _userRepo = _hubLifetimeScope.Resolve<IRepository<user>>();
        }

        public override Task OnConnected()
        {
            var Email = Context.QueryString["loggedInUserEmail"];
            var UserId = _userRepo.Get().Where(x => x.email == Email).FirstOrDefault()?.id;

            // Add user to group ..
            return Groups.Add(Context.ConnectionId, UserId.ToString());
        }

        public override Task OnReconnected()
        {
            var Email = Context.QueryString["loggedInUserEmail"];
            var UserId = _userRepo.Get().Where(x => x.email == Email).FirstOrDefault()?.id;

            // Add user to group ..
            return Groups.Add(Context.ConnectionId, UserId.ToString());
        }

        public override Task OnDisconnected(bool stopCalled)
        {

            var Email = Context.QueryString["loggedInUserEmail"];
            var UserId = _userRepo.Get().Where(x => x.email == Email).FirstOrDefault()?.id;

            // Add user to group ..
            return Groups.Remove(Context.ConnectionId, UserId.ToString());
        }



        public void sendMessage(sentMessagesDTO sentMessage)
        {
            var receiverId = long.Parse(sentMessage.receiverId);
            var senderUser = _userRepo.Get().Where(x => x.email == sentMessage.senderEmail).FirstOrDefault();
            var fromUserId = senderUser.id;
            var senderName = senderUser.name;

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


            Clients.Group(sentMessage.receiverId.ToString()).receiveMessage(new {
                userId = fromUserId,
                date = sentMessage.sendDate,
                from_user_id = fromUserId,
                to_user_id = sentMessage.receiverId.ToString(),
                showMessage = true,
                to_user_name = senderName,
                message = sentMessage.message,
                sendDate = sentMessage.sendDate,
                time = sentMessage.time
            });
        }
        protected override void Dispose(bool disposing)
        {
            // Dispose the hub lifetime scope when the hub is disposed.
            if (disposing && _hubLifetimeScope != null)
            {
                _hubLifetimeScope.Dispose();
            }

            base.Dispose(disposing);
        }


    }
}