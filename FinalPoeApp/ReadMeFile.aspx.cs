using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CustomClassLibrary1;

namespace FinalPoeApp
{
    public partial class ReadMeFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Next_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();
            Response.Redirect("~/StudentLogin");
        }
    }
}