using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CustomClassLibrary1;

namespace FinalPoeApp
{
    public partial class ViewModules : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=TSHEPANG-MORAKE;Initial Catalog=userdb;Integrated Security=True");

            SqlCommand cmd = new SqlCommand(@"SELECT [Module_Name]
                ,[Study_Date]
                 FROM [dbo].[Reminder]", con);

            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dtbl = new DataTable("Reminder");
            con.Close();

            Response.Write("STUDY REMINDER: Programming 2B 2021/11/29");
        }
        
        protected void btn_View_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();
            Response.Redirect("~/ModuleDetails");
        }
    }
}