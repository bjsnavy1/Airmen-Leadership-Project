using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace Airman_Leadership.App_Code
{
    public class AppConfig
    {
        public static string FromAddress 
        {
            get
            {
                string result = WebConfigurationManager.AppSettings.Get("FromAddress");
                if (!string.IsNullOrEmpty(result))
                {
                    return result;
                }
                throw new Exception("Appsetting FromAddress not found in web.config file.");
            }
        }

       
        public static string FromName
        {
            get
            {
                string result = WebConfigurationManager.AppSettings.Get("FromName");
                if (!string.IsNullOrEmpty(result))
                {
                    return result;
                }
                throw new Exception("Appsetting FromName not found in web.config file.");
            }
        }

        public static string ToAddress
        {
            get
            {
                string result = WebConfigurationManager.AppSettings.Get("ToAddress");
                if (!string.IsNullOrEmpty(result))
                {
                    return result;
                }
                throw new Exception("Appsetting ToAddress not found in web.config file.");
            }
        }

        public static string ToName
        {
            get
            {
                string result = WebConfigurationManager.AppSettings.Get("ToName");
                if (!string.IsNullOrEmpty(result))
                {
                    return result;
                }
                throw new Exception("Appsetting ToName not found in web.config file.");
            }
        }

        public static bool SendMailOnError
        {
            get
            {
                string result = WebConfigurationManager.AppSettings.Get("SendMailOnError");
                if (!string.IsNullOrEmpty(result))
                {
                    return Convert.ToBoolean(result);
                }
                throw new Exception("Appsetting SendMainOnError not found in web.config file.");
            }
        }
    }
}