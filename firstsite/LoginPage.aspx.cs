using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Runtime.Remoting.Messaging;
using System.ComponentModel.DataAnnotations;
using System.Web.Services.Description;
using System.Collections;
using System.Data.OleDb;
using System.Xml.Linq;
using System.Data.Common;

namespace firstsite
{

    public partial class LoginPage : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
        }


        public object Getscalar(string SQL)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\RotemCohen\source\repos\firstsite\firstsite\App_Data\db.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(SQL, con);
            con.Open();
            object scalar = cmd.ExecuteScalar();
            con.Close();
            return scalar;
        }
        protected void Login_Check(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\RotemCohen\source\repos\firstsite\firstsite\App_Data\db.mdf;Integrated Security=True");
            string username = TxtUserName.Text;
            string password = TxtPassword.Text;
            string SQL = @"SELECT fname FROM Users WHERE username = @username AND password = @password;";
            SqlCommand cmd = new SqlCommand(SQL, con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            con.Open();
            object scalar = cmd.ExecuteScalar();
            con.Close();

            message.InnerText = (string)scalar;
            if (scalar != null)
            {
                Session["fname"] = scalar;
                Session["Login"] = true;
                message.InnerHtml = Session["fname"].ToString();
                Response.Redirect("/");
            }
            else
            {
                Session["username"] = "Visitor";
                Session["Login"] = false;
                message.InnerHtml = "Unknown username or password";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
            {
                if (TxtPassword.TextMode != TextBoxMode.Password)
                {
                    TxtPassword.TextMode = TextBoxMode.Password;
                }
                else
                {
                    TxtPassword.TextMode = TextBoxMode.SingleLine;
                }
            }

        
    }
}