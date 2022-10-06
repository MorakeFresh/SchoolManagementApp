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
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_SignIn_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();

            try
            {
                SqlConnection sqlcon = new SqlConnection(@"Data Source=TSHEPANG-MORAKE;Initial Catalog=userdb;Integrated Security=True");
                string query = "Select * from Users Where Username = '" + txtBox_Username.Text.Trim() + "'" +
                    " and Password = '" + txtBox_Password.Text.Trim() + "'";

                SqlDataAdapter sda = new SqlDataAdapter(query, sqlcon);
                DataTable dtbl = new DataTable();
                sda.Fill(dtbl);
                if (dtbl.Rows.Count == 1)
                {
			        Response.Write("Sign in successful");
                    Response.Redirect("~/ModuleDetails");
                }
                else
                {
 			Response.Write("Please enter valid username and password" + "\n" +
                        "Or Register ");
                }
            }
            catch (Exception error)
            {
                Response.Write(error);
            }
        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();
            Response.Redirect("~/StudentRegistration");
        }
    }
}