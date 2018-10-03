using System;
using System.IO;
using System.Net;
using System.Text;

namespace BusinessLayer.PushService
{
    public class Push: IPush
    {
        public void SendNotificationsToAPNS(string passPhrase, string deviceToken, string message)
        {
            throw new NotImplementedException();

        }

        public void SendNotificationsToFCM(string serverApiKey,string senderId, string targetDeviceToken, string message)
        {
            try
            {
                var notification = message;
                WebRequest tRequest = WebRequest.Create("https://fcm.googleapis.com/fcm/send");
                tRequest.Method = "post";
                tRequest.ContentType = "application/x-www-form-urlencoded;charset=UTF-8";
                tRequest.Headers.Add(string.Format("Authorization: key={0}" , serverApiKey));
                tRequest.Headers.Add(string.Format("Sender: id={0}", senderId));

                string postData = "data.message=" + message + "&data.time=" + System.DateTime.Now.ToString() + "&registration_id=" + targetDeviceToken + "";

                Byte[] byteArray = Encoding.UTF8.GetBytes(postData);
                tRequest.ContentLength = byteArray.Length;
                using (Stream dataStream = tRequest.GetRequestStream())
                {
                    dataStream.Write(byteArray, 0, byteArray.Length);
                    using (WebResponse tResponse = tRequest.GetResponse())
                    {
                        using (Stream dataStreamResponse = tResponse.GetResponseStream())
                        {
                            using (StreamReader tReader = new StreamReader(dataStreamResponse))
                            {
                                String sResponseFromServer = tReader.ReadToEnd();
                                //result.Response = sResponseFromServer;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
