using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace firstsite
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Register_User(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\RotemCohen\source\repos\firstsite\firstsite\App_Data\db.mdf;Integrated Security=True");
            string username = TxtUserName.Text;
            string password = TxtPassword.Text;
            string fname = TxtFname.Text;
            string lname = TxtLname.Text;
            string SQL = @"SELECT fname FROM Users WHERE username = @username;";
            SqlCommand cmd = new SqlCommand(SQL, con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            con.Open();
            object scalar = cmd.ExecuteScalar();
            con.Close();
            if (scalar == null)
            {
                String registerQuery = @"INSERT INTO Users 
                (password, username, fname, lname) VALUES (@password, @username, @fname, @lname);";
                SqlCommand registerUser = new SqlCommand(registerQuery, con);
                registerUser.Parameters.AddWithValue("@username", username);
                registerUser.Parameters.AddWithValue("@password", password);
                registerUser.Parameters.AddWithValue("@fname", fname);
                registerUser.Parameters.AddWithValue("@lname", lname);
                con.Open();
                int n = registerUser.ExecuteNonQuery();
                con.Close();
                if(n == 1)
                {
                    message.InnerHtml = "!נרשמת בהצלחה";

                }
                else
                {
                    message.InnerText = "הייתה בעיה, נסה שנית";
                }
            }
            else
            {
                message.InnerText = "שם משתמש תפוס";
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