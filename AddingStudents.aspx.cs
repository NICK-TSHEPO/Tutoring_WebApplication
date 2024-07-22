using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MogotlaneNick_43230350_Assessment_2_Practical
{
    public partial class AddingStudents : System.Web.UI.Page
    {
        //Declaring variables
        SqlConnection conn;
        SqlCommand comm;
        SqlDataAdapter dataAdapter;
        SqlDataReader dataReader;
        public string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\43230350\source\repos\MogotlaneNick_43230350_Assessment_2_Practical\App_Data\TutoringDB.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(conString);    //Establishing connection
            conn.Open();
            if (!Page.IsPostBack)
            {
                //Show todays' date in the calendar
                Calendar.SelectedDate = DateTime.Today;
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(conString);    //Establishing connection
            conn.Open();    //Opening connection

            
            DateTime tutoringDate = Calendar.SelectedDate;
            HttpCookie _studentInfo = new HttpCookie("Info");   //Creating a cookie
            //Storing student
            _studentInfo["full_names"] = txtFullNames.Text;  //name and surname inside a cookie
            _studentInfo["contact_no"] = txtContactNo.Text;     //contact numbers inside a cookie
            _studentInfo["module_code"] = txtModuleCode.Text;   //module code inside cookie
            _studentInfo["tutoring_date"] = tutoringDate.ToString("M/dd/yyyy");     //selected date for tutoring inside a cookie

            dataAdapter = new SqlDataAdapter();
            if(_studentInfo != null)
            {
                //SQL Statement for adding student full names, Module Code, contact numbers and Tutoring Date in the table
                string sql_insert = $"INSERT INTO StudentsInfo(Student_FullNames, Contact_No, Module_Code, Tutoring_Date) VALUES (@fullNames, @contactNo, @moduleCode, @tutoringDate)";
                comm = new SqlCommand(sql_insert, conn);

                comm.Parameters.AddWithValue("@fullNames", _studentInfo["full_names"]);
                comm.Parameters.AddWithValue("@contactNo", _studentInfo["contact_no"]);
                comm.Parameters.AddWithValue("@moduleCode", _studentInfo["module_code"]);
                comm.Parameters.AddWithValue("@tutoringDate", _studentInfo["tutoring_date"]);


                /*if (DateTime.Compare(DateTime.Today, tutoringDate) < 0) // if is so
                {
                    //give the error message that the selected date already past
                    lblMessage.Text = "Please select an today's date or upcoming date - in the future";

                }
                else
                {
                    
                }
                */
                dataAdapter.InsertCommand = comm;
                dataAdapter.InsertCommand.ExecuteNonQuery();

            }

            conn.Close();   //Closing connection
            Response.Redirect("Operations.aspx");   //Redirecting to the operation web form to show the user that student was added

        }

        protected void LinkButtonSearch_Click(object sender, EventArgs e)
        {
            //Clearing all the textBoxes to receive new input
            txtFullNames.Text = "";
            txtContactNo.Text = "";
            txtModuleCode.Text = "";
        }

        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButtonBack_Click(object sender, EventArgs e)
        {
            conn.Close();   //Closing connection
            Response.Redirect("Operations.aspx");   //Redirecting to the operation web form
        }
    }
}