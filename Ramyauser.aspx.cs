using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace UserRegistrtion_Form22
{
    public partial class Ramyauser : System.Web.UI.Page
    {
        string constring = "Data Source=DESKTOP-F8LKLU5;Initial Catalog=Ispatialtic;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                loaddata();
                Clear();
            }
        }
        public void loaddata()
        {
            ramyaGv.DataSourceID = SqlDataSource2.ID;
            ramyaGv.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);

                string query = "insert into USERS1(FirstName,LastName,Address,Email,Password) values(@FirstName,@LastName,@Address,@Email,@Password)";
                SqlCommand command = new SqlCommand(query, con);
                con.Open();
                command.CommandType = CommandType.Text;

                command.Parameters.AddWithValue("FirstName", txtfirstname.Text);
                command.Parameters.AddWithValue("LastName", txtlastname.Text);
                command.Parameters.AddWithValue("Address", txtaddress.Text);
                command.Parameters.AddWithValue("Email", txtemail.Text);
                command.Parameters.AddWithValue("Password", txtpassword.Text);
                command.ExecuteNonQuery();
                con.Close();
                lblalert.Text = "data is registred";
                lblalert.ForeColor = Color.Blue;
            }
            catch(Exception ex)
            {
                lblalert.Text = ex.Message;
            }


            //SqlConnection con = new SqlConnection(constring);
            //string query = "insert into USERS1 (FirstName,LastName,Address,Email,Password)values(@FirstName,@LastName,@Address,@Email,@Password)";
            //SqlCommand command = new SqlCommand(query, con);
            //con.Open();
            //command.CommandType = CommandType.Text;
            //command.Parameters.AddWithValue("FirstName", txtfirstname.Text);
            //command.Parameters.AddWithValue("LastName", txtlastname.Text);
            //command.Parameters.AddWithValue("Address", txtaddress.Text);
            //command.Parameters.AddWithValue("Email", txtemail.Text);
            //command.Parameters.AddWithValue("Password", txtpassword.Text);
            //command.ExecuteNonQuery();
            //con.Close();
            //lblalert.Text = "Data is Registerd";
            //lblalert.ForeColor = System.Drawing.Color.Aqua;
          
          
        }
        public void Clear()
        {
            txtfirstname.Text = "";
            txtlastname.Text = "";
            txtaddress.Text = "";
            txtemail.Text = "";
            txtpassword.Text = "";
        }
    }
}