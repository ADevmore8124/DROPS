using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Net.Mail;


namespace Dist_Cloud
{

    public class SendMAIL
    {
        public SendMAIL()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public string SendEmail(string toAddress, string subject, string body)
        {
            string result = "Email Send Successfully...";
            string senderID = "dropscloudproject@gmail.com";// use sender’s email id here..
            const string senderPassword = "9503679775"; // sender password here…
            try
            {
                SmtpClient smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com", // smtp server address here…
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                    Timeout = 30000,
                };
                MailMessage message = new MailMessage(senderID, toAddress, subject, body);
                smtp.Send(message);
            }
            catch (Exception ex)
            {
                result = ex.Message.ToString();
            }
            return result;
        }
    }


}