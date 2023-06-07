using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserRegistration_Form
{
    public partial class User33 : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["IspatialticConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Getdata();
            }
        }

        public void Getdata()
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand command = new SqlCommand("Spgetusers", con);
            con.Open();

            userview.DataSourceID = SqlDataSource1.ID;
            userview.DataBind();
            con.Close();
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);

            SqlCommand command = new SqlCommand("Spinsertusers", con);
            con.Open();
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("Name", txtname.Text);
            command.Parameters.AddWithValue("Surname", txtsurname.Text);
            command.Parameters.AddWithValue("City", txtcity.Text);
            command.Parameters.AddWithValue("Email", txtemail.Text);
            command.Parameters.AddWithValue("Password", txtpassword.Text);
            command.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "data is registred";
            lblmsg.ForeColor = Color.Blue;

            Getdata();

           
            
        }
        protected void userview_RowDelating(object sender ,GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(userview.DataKeys[e.RowIndex].Value.ToString());
            SqlConnection con = new SqlConnection(constring);
            SqlCommand command = new SqlCommand("Spdeleteusers1", con);
            con.Open();

            command.Parameters.AddWithValue("@UID", id);
            command.CommandType = CommandType.StoredProcedure;
            command.ExecuteNonQuery();
            con.Close();
            Getdata();

        }
        public void userview_RowUpdate(object sender,GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(userview.DataKeys[e.RowIndex].Value);
            SqlConnection con = new SqlConnection(constring);

            SqlCommand command = new SqlCommand("Spupdateusers", con);
            con.Open();
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("Name",( userview.Rows[e.RowIndex].FindControl("txtname")as TextBox).Text);
            command.Parameters.AddWithValue("Surname", (userview.Rows[e.RowIndex].FindControl("txtsurname") as TextBox).Text);
            command.Parameters.AddWithValue("City", (userview.Rows[e.RowIndex].FindControl("txtcity") as TextBox).Text);
            command.Parameters.AddWithValue("Email", (userview.Rows[e.RowIndex].FindControl("txtemail") as TextBox).Text);
           
            command.Parameters.AddWithValue("Password", (userview.Rows[e.RowIndex].FindControl("txtpassword") as TextBox).Text);
            command.Parameters.AddWithValue("@UID", id);

            command.ExecuteNonQuery();
            con.Close();
            userview.EditIndex = -1;
            lblmsg.Text = "data is updated";
            lblmsg.ForeColor = Color.Blue;
            Getdata();
        }

      public void userview_RowEditing(object sender,GridViewEditEventArgs e)
        {
            userview.EditIndex = e.NewEditIndex;
            Getdata();
        }
        public void Canceling(object sender,GridViewCancelEditEventArgs e)
        {
            userview.EditIndex = -1;
            Getdata();
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtsurname.Text = "";
            txtcity.Text = "";
            txtemail.Text = "";
            txtpassword.Text = "";
        }

    }
}
