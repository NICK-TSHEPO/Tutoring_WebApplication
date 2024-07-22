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
    public partial class Operations : System.Web.UI.Page
    {
        //Declaring variables
        SqlConnection conn;
        SqlCommand comm;
        SqlDataAdapter dataAdapter;
        SqlDataReader dataReader;
        public string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\43230350\source\repos\MogotlaneNick_43230350_Assessment_2_Practical\App_Data\TutoringDB.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                //Show todays' date in the calendar
                Calendar.SelectedDate = DateTime.Today;
            }
            //Calling method of displaying all the students
            display($"SELECT * FROM StudentsInfo");

        }
        public void display(string sqlStatement)
        {
            conn = new SqlConnection(conString);    //Establishing connection
            conn.Open();    //Opening connection
            //SQL Statement for displaying  the data from the database
            string sql_display = sqlStatement;
            comm = new SqlCommand(sql_display, conn);
            dataAdapter = new SqlDataAdapter();
            dataAdapter.SelectCommand = comm;

            DataSet ds = new DataSet();
            dataAdapter.Fill(ds);
            gvStudentsInfo.DataSource = ds;
            gvStudentsInfo.DataBind();

            conn.Close();   //Closing connection
        }

        protected void LinkButtonClear_Click(object sender, EventArgs e)
        {
            //Clearing all the textBoxes to receive new input
            txtFullNames.Text = "";
            txtContactNo.Text = "";
            txtModuleCode.Text = "";
            //Clearing message in label
            lblMessage.Text = "";
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {

            Response.Redirect("AddingStudents.aspx");    //Redirecting to the AddingStudents web form to add students
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(conString);    //Establishing connection
            conn.Open();    //Opening connection


            DateTime tutoringDate = Calendar.SelectedDate;
            HttpCookie _studentInfo = new HttpCookie("Info");   //Creating a cookie
          
            _studentInfo["full_names"] = txtFullNames.Text;  //name and surname inside a cookie
           // _studentInfo["contact_no"] = txtContactNo.Text;     //contact numbers inside a cookie        
            _studentInfo["tutoring_date"] = tutoringDate.ToString("M/dd/yyyy");     //selected date for tutoring inside a cookie
            

            Response.Cookies.Add(_studentInfo);
            dataAdapter = new SqlDataAdapter();
            if (_studentInfo != null)
            {
                //SQL Statement for adding student full names, Module Code, contact numbers and Tutoring Date in the table
                string sql_update = $"UPDATE StudentsInfo SET Tutoring_Date = @tutoringDate WHERE Student_FullNames = @fullNames";
                comm = new SqlCommand(sql_update, conn);

                // SET Contact_No = @contact_no OR
                comm.Parameters.AddWithValue("@fullNames", _studentInfo["full_names"]);        
                //comm.Parameters.AddWithValue("@contact_no", _studentInfo["contact_no"]);
                comm.Parameters.AddWithValue("@tutoringDate", _studentInfo["tutoring_date"]);

                /*
                if (DateTime.Compare(DateTime.Today, tutoringDate) < 0) // if is so
                {
                    //give the error message that the selected date already past
                    lblMessage.Text = "Please select an today's date or upcoming date - in the future";
                }
                else
                {
                   
                    
                }
                */
                dataAdapter.UpdateCommand = comm;
                dataAdapter.UpdateCommand.ExecuteNonQuery();

            }

            conn.Close();   //Closing connection
                            
            //Giving the user message that data was updated
            lblMessage.Text = _studentInfo["full_names"] + " tutoring session was successfully updated.";


            //Calling method of displaying all to show the user updated list                      
            display($"SELECT * FROM StudentsInfo");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(conString);    //Establishing connection
            conn.Open();    //Opening connection


            DateTime tutoringDate = Calendar.SelectedDate;
            HttpCookie _studentInfo = new HttpCookie("Info");   //Creating a cookie
            //Storing student
            _studentInfo["full_names"] = txtFullNames.Text;  //name and surname inside a cookie
            _studentInfo["module_code"] = txtModuleCode.Text;   //module code inside cookie

            Response.Cookies.Add(_studentInfo);

            dataAdapter = new SqlDataAdapter();
            if (_studentInfo != null)
            {
                //SQL Statement for deleting student using full names, Module Code in the Tutoring table
                string sql_delete = $"DELETE FROM StudentsInfo WHERE Student_FullNames LIKE @fullNames AND Module_Code LIKE @moduleCode";

                comm = new SqlCommand(sql_delete, conn);
                comm.Parameters.AddWithValue("@fullNames", _studentInfo["full_names"]);
                comm.Parameters.AddWithValue("@moduleCode", _studentInfo["module_code"]);
             
                dataAdapter.DeleteCommand = comm;
                dataAdapter.DeleteCommand.ExecuteNonQuery();

            }

            conn.Close();   //Closing connection


            if(txtFullNames.Text != "" && txtModuleCode.Text != "")
            {
               
                lblMessage.Text = _studentInfo["full_names"] + " tutoring session was successfully delete.";
            }
            else
            {
                lblMessage.Text = "Enter student name and surname as well as module code to deleted";
            }
            //Calling method of displaying all to show the user updated list              
            display($"SELECT * FROM StudentsInfo");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Session["fullname"] = txtFullNames.Text;
            //Searching student using name and surname
            display($"SELECT * FROM StudentsInfo WHERE Student_FullNames LIKE '%{txtFullNames.Text}%'");
        }

        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}