using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


namespace Airman_Leadership.Controls
{
    public partial class Attendance : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dlPayment_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string entity;
            //entity = dlPayment.SelectedItem.Text;
            //switch (entity)
            //{
            //    case "Cash":
            //        pnlPayPal.Visible = false;
            //        pnlCash.Visible = true;
            //        break;
            //    case "Paypal or Credit Card":
            //        pnlPayPal.Visible = true;
            //        pnlCash.Visible = false;
            //        break;
            //}
        }
        

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtFname.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please enter your first name.\");", true);
            }
            else if (txtLname.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please enter your last name.\");", true);
            }
            else if (!Regex.IsMatch(txtFname.Text, @"[a-zA-Z]"))
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please only enter letters in the First Name field.\");", true);
                txtFname.Text = "";
                txtFname.Focus();
            }
            else if (!Regex.IsMatch(txtLname.Text, @"[a-zA-Z]"))
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please only enter letters in the Last Name field.\");", true);
                txtLname.Text = "";
                txtLname.Focus();
            }
            else
            {
                try
                {
                    AttendanceInfoDataContext db = new AttendanceInfoDataContext();
                    Attendee user = new Attendee();

                    user.Student = dlStudent.Text;
                    user.Fname = txtFname.Text;
                    user.Lname = txtLname.Text;
                    user.Rank = dlRank.Text;
                    user.Meal = dlMeal.Text;
                    user.Dvisitor = dlvisitor.Text;
                    user.AppDate = DateTime.Now;

                    string entity1;
                    entity1 = dlPayment.Text;
                    switch (entity1)
                    {
                        case "Cash":
                            user.Cash = true;
                            user.Credit = false;
                            break;
                        case "Credit Card or Paypal":
                            user.Cash = false;
                            user.Credit = true;
                            break;
                    }


                    db.Attendees.InsertOnSubmit(user);
                    db.SubmitChanges();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

                if (dlPayment.SelectedItem.Text == "Paypal or Credit Card")
                {
                    pnlPayPal.Visible = true;
                    pnlAdd.Visible = true;
                    pnlCash.Visible = false;
                }
                

                if (dlPayment.SelectedItem.Text == "Cash")
                {
                   
                    pnlCash.Visible = true;
                    pnlAdd2.Visible = true;
                    Panel1.Visible = false;
                }
                
              
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFname.Text = null;
            txtLname.Text = null;
            dlvisitor.SelectedIndex = 0;
            dlPayment.SelectedIndex = 0;
            dlRank.SelectedIndex = 0;
            dlMeal.SelectedIndex = 0;
            Panel1.Visible = false;
            pnlAdd.Visible = false;
            pnlAdd2.Visible = false;
            pnlCash.Visible = false;
            pnlPayPal.Visible = false;
        }

        protected void txtFname_TextChanged(object sender, EventArgs e)
        {
            if (!Regex.IsMatch(txtFname.Text, @"[a-zA-Z]"))
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please only enter letters in the First Name field.\");", true);
                txtFname.Text = "";
                txtFname.Focus();
            }
        }

        protected void txtLname_TextChanged(object sender, EventArgs e)
        {
            if (!Regex.IsMatch(txtLname.Text, @"[a-zA-Z]"))
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "UserDialogScript", "alert(\"Please only enter letters in the Last Name field.\");", true);
                txtLname.Text = "";
                txtLname.Focus();
            }
        }

        
    }
}