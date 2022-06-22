using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Praktika_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            if (TaskTextBox.Text != "")
            {
                SqlCommand cmd = new SqlCommand("insert into MyTable([Задача]) values(N'" + TaskTextBox.Text + "')");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                TaskTextBox.Text = "";
            }

        }
    }
}