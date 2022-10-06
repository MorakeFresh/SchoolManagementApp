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
    public partial class ModuleDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(@"Data Source=TSHEPANG-MORAKE;Initial Catalog=userdb;Integrated Security=True");
        protected void btn_Save_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();

            try
            {
                int studyHours = (((Convert.ToInt32(txtBox_Credits.Text) * 10) / 12) - Convert.ToInt32(txtBox_ClassHours.Text));
            int remStudyHours = studyHours - Convert.ToInt32(txtBox_HoursSpent.Text);

                SqlCommand cmd = new SqlCommand(@"INSERT INTO[dbo].[Modules]
            ([Module_Code]
          ,[Module_Name]
          ,[Module_Credit]
          ,[Class_Hours]
          ,[Self_Study_Hours]
          ,[Remaining_Hours]
          ,[Hours_Spent]
          ,[Semester_Weeks]
          ,[Start_Date])
     VALUES
           ('" + txtBox_Code.Text + "', '" + txtBox_Name.Text + "', '" + Convert.ToInt32(txtBox_Credits.Text) + "', '" + Convert.ToInt32(txtBox_ClassHours.Text) + "', '" + studyHours + "', '" + remStudyHours + "', '" + Convert.ToInt32(txtBox_HoursSpent.Text) + "', '" + Convert.ToInt32(txtBox_SemesterWeeks.Text) + "', '" + Calendar_StartDate.SelectedDate + "')", con);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("Semester & Module Details Stored!");

            }
            catch (Exception error)
            {
		Response.Write(error);
            }
        }

        protected void btn_View_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();
            Response.Redirect("~/ViewModules");
        }

        protected void btn_Reminder_Click(object sender, EventArgs e)
        {
            ClassLibrary.timeConsuming();

            SqlCommand cmd = new SqlCommand(@"INSERT INTO[dbo].[Reminder]
            ([Module_Name]
          ,[Study_Date])
     VALUES
           ('"+txtBox_ModuleName.Text+"','"+Calendar_StudyDate.SelectedDate+"')", con);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("Study reminder set!");
        }
    }
}