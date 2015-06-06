using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airman_Leadership.Controls
{
    public partial class Registar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFname.Text = "";
            txtLname.Text = "";
            txtFname.Focus();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            StudentInfoDataContext db = new StudentInfoDataContext();
            Student stu = new Student();

            stu.Fname = txtFname.Text;
            stu.Lname = txtLname.Text;
            stu.Rank = dlRank.Text;
            stu.Squadron = dlSquad.Text;
            stu.EnrollDate = DateTime.Now;

            db.Students.InsertOnSubmit(stu);
            db.SubmitChanges();

            Response.Redirect("~/Default.aspx");
        }
    }
}