using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Net.Mail;
using Airman_Leadership.App_Code;


namespace Airman_Leadership
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

        }

        void Application_Error(object sender, EventArgs e)
        {
            if (AppConfig.SendMailOnError)
            {
                if (HttpContext.Current.Server.GetLastError() != null)
                {
                    Exception myException = HttpContext.Current.Server.GetLastError().GetBaseException();
                    string mailSubject = "Error in page " + Request.Url.ToString();
                    string message = string.Empty;
                    message += "<strong>Message</strong><br />" + myException.Message + "<br />";
                    message += "<strong>Stack Trace</strong><br />" + myException.StackTrace + "<br />";
                    message += "<strong>Query String</strong><br />" + Request.QueryString.ToString() + "<br />";
                    MailMessage myMessage = new MailMessage(AppConfig.FromAddress, AppConfig.ToAddress, mailSubject, message);
                    myMessage.IsBodyHtml = true;
                    SmtpClient mySmtpClient = new SmtpClient();
                    mySmtpClient.Send(myMessage);
                }
            }
        }
    }
}