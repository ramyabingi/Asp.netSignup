using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserRegistration_Form
{
    public partial class User : System.Web.UI.Page
    {
        SqlConnection SQLConn = new SqlConnection("Data Source=DESKTOP-F8LKLU5; Initial Catalog=Ispatialtic; Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter SQLAAdapter = new SqlDataAdapter("select * from Users", SQLConn);
            DataTable DTT = new DataTable();
            SQLAAdapter.Fill(DTT);
        }
        protected void btnregistration_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "";
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into Users values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtcity.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "')", SQLConn);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);


            SqlDataAdapter SQLAAdapter = new SqlDataAdapter("select * from Users", SQLConn);
            DataTable DTT = new DataTable();
            SQLAAdapter.Fill(DTT);

            GridView1.DataSource = DTT;
            GridView1.DataBind();

            lblmsg.Text = "Registration Done!!";
            txtfname.Text = "";
            txtlname.Text = "";
            txtemail.Text = "";
            txtcity.Text = "";
            txtfname.Focus();
        }
        
    }
}