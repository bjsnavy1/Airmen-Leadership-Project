using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;
using System.Text.RegularExpressions;
using Airman_Leadership.App_Code;

namespace Airman_Leadership.Controls
{
    public partial class ContactForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtPhone.Text = "";
            txtEmail.Text = "";
            txtComments.Text = "";
            txtName.Focus();
        }
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
                string email = txtEmail.Text;
                Regex regex = new Regex(@"^[\w!#$%&'*+\-/=?\^_`{|}~]+(\.[\w!#$%&'*+\-/=?\^_`{|}~]+)*"
                        + "@"
                        + @"((([\-\w]+\.)+[a-zA-Z]{2,4})|(([0-9]{1,3}\.){3}[0-9]{1,3}))$");
                Match match = regex.Match(email);
                if (txtName.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please enter your name.\");", true);
                    txtName.Focus();
                }
                else if (txtPhone.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please enter your phone number.\");", true);
                    txtPhone.Focus();
                }
                else if (txtEmail.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please enter your E-mail address.\");", true);
                    txtEmail.Focus();
                }
                else if (txtComments.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please enter comments.\");", true);
                    txtComments.Focus();
                }
                else if (!Regex.IsMatch(txtName.Text, @"[a-zA-Z]"))
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please type letters only in the Name field.\");", true);
                    txtName.Focus();
                }

                else if (!Regex.IsMatch(txtPhone.Text, @"^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$"))
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please enter your phone number in this format: (###)###-####\");", true);
                    txtPhone.Focus();
                }
                else if (!match.Success)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please enter a correct E-mail address.\");", true);
                    txtEmail.Focus();
                }
                else
                {
                    if (Page.IsValid)
                    {
                        string fileName = Server.MapPath("~/App_Data/Email.txt");
                        string mailBody = File.ReadAllText(fileName);

                        mailBody = mailBody.Replace("##Name##", txtName.Text);
                        mailBody = mailBody.Replace("##Phone##", txtPhone.Text);
                        mailBody = mailBody.Replace("##Email##", txtEmail.Text);
                        mailBody = mailBody.Replace("##Comments##", txtComments.Text);

                        MailMessage contactMessage = new MailMessage();
                        contactMessage.Subject = "Contact request from web site";
                        contactMessage.Body = mailBody;

                        contactMessage.From = new MailAddress(AppConfig.FromAddress, AppConfig.FromName);
                        contactMessage.To.Add(new MailAddress(AppConfig.ToAddress, AppConfig.ToName));
                        contactMessage.ReplyToList.Add(new MailAddress(txtEmail.Text));

                        SmtpClient mySmtpClient = new SmtpClient();
                        mySmtpClient.Send(contactMessage);

                        lblSent.Visible = true;
                    }
                }
        }
    }
}