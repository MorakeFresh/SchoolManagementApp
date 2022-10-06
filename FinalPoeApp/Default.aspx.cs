using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CustomClassLibrary1;

namespace FinalPoeApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Faq_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();
            Response.Redirect("~/ReadMeFile");
        }

        protected void btn_SignIn_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();
            Response.Redirect("~/StudentLogin");
        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();
            Response.Redirect("~/StudentRegistration");
        }
    }
}