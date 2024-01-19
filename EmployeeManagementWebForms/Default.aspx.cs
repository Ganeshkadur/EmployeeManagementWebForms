using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.IO;
using System.Drawing;

namespace EmployeeManagementWebForms
{
    public partial class _Default : Page
    {
        SqlConnection con=new SqlConnection(@"Data Source=NIMBUS2000\SQLEXPRESS;Initial Catalog=StudentWebForm;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {





            if (!IsPostBack)
            {
              /*  GetAllStudentDetails();*/
            }

            if (Session["user"] != null)
            {
                con.Open();
                string name = TextBox2.Text;
                string username = Session["user"].ToString();
                string query = "select * from StudentCrud where Email=@Email";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", username);


                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student Found Sucessfully ');", true);
                }
                else
                {
                    // Handle the case when no data is found
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('No student found for the given username.');", true);
                }


            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {


             con.Open();
                int stdid = int.Parse(TextBox1.Text);
                string name = TextBox2.Text;
                string Adress = TextBox3.Text;
                string email = TextBox4.Text;

                string imagePath = null;//---------------------------
                string branch = DropDownList1.SelectedValue;
                DateTime date = DateTime.Parse(TextBox5.Text);

                string path = Server.MapPath("Images/");
                if (FileUpload1.HasFile)
                {
                    string filename = Path.GetFileName(FileUpload1.FileName);
                    string extension = Path.GetExtension(filename);
                    HttpPostedFile postedFile = FileUpload1.PostedFile;
                    int length = postedFile.ContentLength;

                    if (extension.ToLower() == ".jpg" || extension.ToLower() == ".png" || extension.ToLower() == ".jpeg")
                    {
                    FileUpload1.SaveAs(path + filename);
                    imagePath = "Images/" + filename;
                    }
                    else
                    { 
                    Label1.Text = "Image Format Not Supported";
                    Label1.ForeColor = Color.Red;
                    Label1.Visible = true;
                    }
                }
               else
               {
                Label1.Text = "Please Upload An image";
                Label1.ForeColor = Color.Red;
                Label1.Visible = true;
               }

                    SqlCommand cmd = new SqlCommand("spRegister", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@StudentId", stdid);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Adress", Adress);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Branch", branch);
                    cmd.Parameters.AddWithValue("@date", date);
                    cmd.Parameters.AddWithValue("@link", imagePath);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Use parameters to avoid SQL injection and handle data types correctly


                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student Sucessfully Registered');", true);
                   GetAllStudentDetails();

             
           
        }

       public  void GetAllStudentDetails()
        {
           
                SqlCommand cmd = new SqlCommand("exec spStudentList", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                con.Close();
            


           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

                con.Open();
                int stdid = int.Parse(TextBox1.Text);
                string name = TextBox2.Text;
                string Adress = TextBox3.Text;
                string email = TextBox4.Text;

                string branch = DropDownList1.SelectedValue;
                DateTime date = DateTime.Parse(TextBox5.Text);

                SqlCommand cmd = new SqlCommand("spUpdateStudent", con);
                cmd.CommandType = CommandType.StoredProcedure;
            string imagePath = null;
            string path = Server.MapPath("Images/");
            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                string extension = Path.GetExtension(filename);
                HttpPostedFile postedFile = FileUpload1.PostedFile;
                int length = postedFile.ContentLength;

                if (extension.ToLower() == ".jpg" || extension.ToLower() == ".png" || extension.ToLower() == ".jpeg")
                {
                    FileUpload1.SaveAs(path + filename);
                    imagePath = "Images/" + filename;
                }
                else
                {
                    Label1.Text = "Image Format Not Supported";
                    Label1.ForeColor = Color.Red;
                    Label1.Visible = true;
                }
            }
            else
            {
                Label1.Text = "Please Upload An image";
                Label1.ForeColor = Color.Red;
                Label1.Visible = true;
            }





            // Use parameters to avoid SQL injection and handle data types correctly
            cmd.Parameters.AddWithValue("@StudentId", stdid);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Adress", Adress);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Branch", branch);
                cmd.Parameters.AddWithValue("@date", date);
               cmd.Parameters.AddWithValue("@link", imagePath);
               cmd.ExecuteNonQuery();
            con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student Update Sucessfully ');", true);
                GetAllStudentDetails();
            


           
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            
                con.Open();
                int stdid = int.Parse(TextBox1.Text);
                SqlCommand cmd = new SqlCommand("spDeleteStudent", con);
                cmd.CommandType = CommandType.StoredProcedure;
                // Use parameters to avoid SQL injection and handle data types correctly
                cmd.Parameters.AddWithValue("@StudentId", stdid);
                cmd.ExecuteNonQuery();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student Deleted Sucessfully ');", true);
                GetAllStudentDetails();

          



        }
        protected void Button4_Click(object sender, EventArgs e)
        {

          
                con.Open();
                int stdid = int.Parse(TextBox1.Text);
                /*SqlCommand cmd = new SqlCommand("spGetStudentById", con);
                cmd.CommandType = CommandType.StoredProcedure;
                // Use parameters to avoid SQL injection and handle data types correctly
                cmd.Parameters.AddWithValue("@StudentId", stdid);
                SqlDataReader read=cmd.ExecuteReader();*/

                string query = "select * from StudentCrud where StudentId=@userid";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@userid", stdid);
                SqlDataReader read = cmd.ExecuteReader();

                /*
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();*/
                while (read.Read())
                {
                    TextBox2.Text = read.GetString(1).ToString();
                    TextBox3.Text = read.GetString(2).ToString();
                    TextBox4.Text = read.GetString(3).ToString();
                    DropDownList1.SelectedValue = read.GetString(4).ToString();
                    TextBox5.Text = read.IsDBNull(5) ? string.Empty : read.GetDateTime(5).ToString("yyyy-MM-dd");
                }


                con.Close();


                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student Found Sucessfully ');", true);
            




        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            Response.Redirect("Load.aspx");
           /* GetAllStudentDetails();*/
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            
                con.Open();
                string name = TextBox2.Text;
                SqlCommand cmd = new SqlCommand("spGetStudentByName", con);
                cmd.CommandType = CommandType.StoredProcedure;
                // Use parameters to avoid SQL injection and handle data types correctly
                cmd.Parameters.AddWithValue("@Name", name);

                /* string query = "select * from StudentCrud where Name=@Name";
                 SqlCommand cmd = new SqlCommand(query, con);
                 cmd.Parameters.AddWithValue("@Name", name);
                 SqlDataReader read = cmd.ExecuteReader();
                 while (read.Read())
                 {
                     TextBox2.Text = read.GetString(1).ToString();
                     TextBox3.Text = read.GetString(2).ToString();
                     TextBox4.Text = read.GetString(3).ToString();
                     DropDownList1.SelectedValue = read.GetString(4).ToString();
                     TextBox5.Text = read.IsDBNull(5) ? string.Empty : read.GetDateTime(5).ToString("yyyy-MM-dd");
                 }
     */

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                con.Close();


                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student Found Sucessfully ');", true);

            



        }

        protected void UserCustomValidate(object source, ServerValidateEventArgs args)
        {
            int userId;

            // Try to parse the user ID as an integer
            if (int.TryParse(args.Value, out userId))
            {
                // Check if the user ID is greater than 0
                args.IsValid = userId > 0;
            }
            else
            {
                // If parsing fails, consider it invalid
                args.IsValid = false;
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
           
                Session["user"] = null;
                Response.Redirect("Login.aspx");
            
            if(!Page.IsValid)
            {
                Response.Redirect("Login.aspx");
            }

           



        }

        /*protected void Button8_Click(object sender, EventArgs e)
        {
            // Logout button click event

            // Check if the logout button is clicked
            if (((Button)sender).ID == "Button8")
            {
                // Perform logout without validating the fields
                Session.Clear();
                Session.Abandon();
                Response.Redirect("Login.aspx");
            
                // Disable validation temporarily
                Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

                // Check the validation only for other buttons
                Page.Validate();

                // Enable validation back
                Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.WebForms;

                // Check if the page is valid before processing other buttons
                if (Page.IsValid)
                {
                    // Your existing code for other button click events
                    // ...
                }
            }
        }*/






    }
}