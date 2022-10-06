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
    public partial class StudentRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();

            try
            {
                SqlConnection con = new SqlConnection("Data Source=TSHEPANG-MORAKE;Initial Catalog=userdb;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Users]
           ([Username]
           ,[Password])
     VALUES
           ('" + txtBox_Username.Text + "', '" + txtBox_Password.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("Registration Successfull!");
            }
            catch (Exception error)
            {
             Response.Write(error);   
            }
        }

        protected void btn_SignIn_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();
            Response.Redirect("~/StudentLogin");
        }
    }
}