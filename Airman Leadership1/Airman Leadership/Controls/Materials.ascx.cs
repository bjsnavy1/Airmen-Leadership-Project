using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airman_Leadership.Controls
{
    public partial class Materials : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtpasscode.Text == "ALSClass2014G")
            {
                pnlMaterials.Visible = true;
                lblWarning.Text = null;
            }
            else 
            {
                lblWarning.Text = "Please check your passcode and retry.";
                txtpasscode.Text = null;
                txtpasscode.Focus();
            }
        }
    }
}