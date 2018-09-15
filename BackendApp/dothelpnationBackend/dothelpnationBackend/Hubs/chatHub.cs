using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BusinessLayer.Repositories;
using DataAccessLayer.Entities;
using Microsoft.AspNet.SignalR;
using Autofac;
using System.Threading.Tasks;

namespace dothelpnationBackend.Hubs
{
    public class chatHub : Hub
    {
        private readonly ILifetimeScope _hubLifetimeScope;
        private readonly IRepository<ads_messages> _messagesRepo;

        public chatHub(ILifetimeScope lifetimeScope)
        {
            // Create a lifetime scope for the hub.
            _hubLifetimeScope = lifetimeScope.BeginLifetimeScope();

            _messagesRepo = _hubLifetimeScope.Resolve<IRepository<ads_messages>>();
        }

        public override Task OnDisconnected(bool stopCalled)
        {
            return base.OnDisconnected(stopCalled);
        }

        public void send(string name, string message)
        {
            var ssd = Context.QueryString["loggedInUserEmail"];
            Clients.All.broadcast(name, message);
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