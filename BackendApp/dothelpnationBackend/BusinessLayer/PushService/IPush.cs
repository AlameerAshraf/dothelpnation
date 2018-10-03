using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.PushService
{
    public interface IPush
    {
        void SendNotificationsToFCM(string serverApiKey , string senderId, string targetDeviceToken, string message);
        void SendNotificationsToAPNS(string passPhrase, string deviceToken, string message);
    }
}
