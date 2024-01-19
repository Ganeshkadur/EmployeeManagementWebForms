using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementWebForms
{
    public partial class Register : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=NIMBUS2000\SQLEXPRESS;Initial Catalog=StudentWebForm;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {

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
           



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
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

    }
}