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
    public partial class User22 : System.Web.UI.Page
    {
        //string constring = "Server=DESKTOP-F8LKLU5;Database=Ispatialtic;Trusted_Connection=true";

        //string constring = "Data Source=DESKTOP-F8LKLU5;Initial Catalog=Ispatialtic;Integrated Security=True";
        string constring = ConfigurationManager.ConnectionStrings["IspatialticConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               //GetUsers();
                LoadData();
               clear();
               
            }
        }

        public void GetUsers()
        {
            SqlConnection con = new SqlConnection(constring);
            string query = "select * from Users";
            SqlDataAdapter adapter = new SqlDataAdapter(query, con);
              //DataTable table = new DataTable();
               DataSet set = new DataSet();
                adapter.Fill(set);
            //SqlCommand command = new SqlCommand(query, con);
            //con.Open();
            //SqlDataReader reader = command.ExecuteReader();
            //DataTable dataTable = new DataTable();
            //dataTable.Load(reader);
            //con.Close();
            //GridView1.DataSource = dataTable;
            //GridView1.DataBind();

            // 
            //    GridView1.DataSource = table;
            //    GridView1.DataBind();
            
        }
        public void LoadData()
        {
            GridView1.DataSourceID = SqlDataSource1.ID;
            GridView1.DataBind();
        }
        protected void btnregister(object sender,EventArgs e)
        {
            try
            {
                // SqlConnection con = new SqlConnection(constring);
                SqlConnection con = new SqlConnection(constring);

                string query = "insert into Users(Name,Surname,City,Email,Password) values(@Name,@Surname,@City,@Email,@Password)";
                SqlCommand command = new SqlCommand(query, con);
                con.Open();
                command.CommandType = CommandType.Text;

                command.Parameters.AddWithValue("Name", TextBox1.Text);
                command.Parameters.AddWithValue("Surname", TextBox3.Text);
                command.Parameters.AddWithValue("City", TextBox4.Text);
                command.Parameters.AddWithValue("Email", TextBox5.Text);
                command.Parameters.AddWithValue("Password", TextBox6.Text);
                command.ExecuteNonQuery();
                con.Close();
                lblmsg.Text = "data is registred";
                lblmsg.ForeColor = Color.Blue;
            }
            catch(Exception ex)
            {
                lblmsg.Text = ex.Message;
            }
            //GetUsers();
            LoadData();
            clear();


        }
        public void clear()
        {
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        protected void update_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
        
        SqlCommand command = new SqlCommand("update Users set Name=@Name,Surname=@Surname,City=@City,Email=@Email,Password=@Password where UID=@UID", con);
            con.Open();
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("UID", TextBox2.Text);
            command.Parameters.AddWithValue("Name", TextBox1.Text);
            command.Parameters.AddWithValue("Surname", TextBox3.Text);
            command.Parameters.AddWithValue("City", TextBox4.Text);
            command.Parameters.AddWithValue("Email", TextBox5.Text);
            command.Parameters.AddWithValue("Password", TextBox6.Text);
            command.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "data is Updated";
            lblmsg.ForeColor = Color.Blue;

            LoadData();
            clear();

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
           // string query =;
            SqlCommand command = new SqlCommand("delete from Users where UID=" + TextBox2.Text, con);
            con.Open();
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("UID", TextBox2.Text);
            command.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "data is deleted";
            lblmsg.ForeColor = Color.Blue;
            LoadData();
            clear();
            
        }
    }
}