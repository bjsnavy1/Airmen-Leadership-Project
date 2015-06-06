using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Airman_Leadership.Controls
{
    public partial class Management : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void students_click(object sender, EventArgs e)
        {
            if (pnlStudents.Visible == false)
            {
                pnlStudents.Visible = true;
            }
            else
            {
                pnlStudents.Visible = false;
            }
        }

        protected void Attendees_Click(object sender, EventArgs e)
        {

            if (pnlAttendees.Visible == false)
            {
                pnlAttendees.Visible = true;
            }
            else
            {
                pnlAttendees.Visible = false;
            }
        }

        protected void Print1_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AppendHeader("content-disposition", "attachment; filename=Students.xls");
            Response.ContentType = "application/excel";

            StringWriter sw = new StringWriter();
            HtmlTextWriter htm = new HtmlTextWriter(sw);

            GridView1.RenderControl(htm);
            Response.Write(sw.ToString());
            Response.End();


        }

        protected void Print2_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AppendHeader("content-disposition", "attachment; filename=Attendees.xls");
            Response.ContentType = "application/excel";

            StringWriter sw = new StringWriter();
            HtmlTextWriter htm = new HtmlTextWriter(sw);

            GridView2.RenderControl(htm);
            Response.Write(sw.ToString());
            Response.End();

        }

       
    }
}