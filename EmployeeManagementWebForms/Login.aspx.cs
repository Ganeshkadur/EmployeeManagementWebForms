using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementWebForms
{
    public partial class Login : System.Web.UI.Page
    {
        // SqlConnection con = new SqlConnection(@"Data Source=NIMBUS2000\SQLEXPRESS;Initial Catalog = StudentWebForm; Integrated Security = True; Encrypt=False;TrustServerCertificate=True");
        SqlConnection con = new SqlConnection(@"Data Source=NIMBUS2000\SQLEXPRESS;Initial Catalog=StudentWebForm;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (Request.Cookies["id"] != null && Request.Cookies["name"] != null)
            {
                TextBox1.Text = Request.Cookies["id"].Value;

                TextBox2.Text = Request.Cookies["name"].Value;
            }*/

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           /* if (CheckBox1.Checked)
            {
                Response.Cookies["id"].Value = TextBox1.Text;
                Response.Cookies["name"].Value = TextBox2.Text;
                Response.Cookies["id"].Expires = DateTime.Now.AddMinutes(1);
                Response.Cookies["name"].Expires = DateTime.Now.AddMinutes(1);

            }
            else
            {
                Response.Cookies["id"].Expires = DateTime.Now.AddMinutes(-1);
                Response.Cookies["name"].Expires = DateTime.Now.AddMinutes(-1);
            }*/



    con.Open();
                string query = "select * from StudentCrud where Email=@Email and Branch=@Branch";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Branch", TextBox2.Text);
                SqlDataReader result = cmd.ExecuteReader();
                if (result.HasRows)
                {
                Session["user"] = TextBox1.Text;
                Session["password"] = TextBox2.Text;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login sucessfull');", true);
                    Response.Redirect("Default.aspx");

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login Failed...!');", true);

                }

          



          



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}