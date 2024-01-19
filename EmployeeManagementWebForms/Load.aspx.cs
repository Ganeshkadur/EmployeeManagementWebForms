using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementWebForms
{
    public partial class Load : System.Web.UI.Page
    {
        // SqlConnection con = new SqlConnection(@"Data Source=NIMBUS2000\SQLEXPRESS;Initial Catalog = StudentWebForm; Integrated Security = True; Encrypt=False;TrustServerCertificate=True");
        SqlConnection con = new SqlConnection(@"Data Source=NIMBUS2000\SQLEXPRESS;Initial Catalog=StudentWebForm;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            
                con.Open();
                SqlCommand cmd = new SqlCommand("exec spStudentList", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView3.DataSource = dt;
                GridView3.DataBind();

            con.Close();
            

           

           
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}