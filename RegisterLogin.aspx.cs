using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using WebGrease.Activities;

namespace CookbookPro
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void validateLogin(object sender, EventArgs e)

         {

            string username =txtUsername.Text;
            string password =txtPassword.Text;

            SqlConnection conn = new SqlConnection("Server=DRAGONFLY\\SQLEXPRESS;Database=cookbookpro;Trusted_Connection=True");
             SqlCommand cmd = new SqlCommand("SELECT * FROM Chef WHERE Username=@Username AND Password=@Password", conn);
           
            cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            
            DataSet ds = new DataSet();
            da.Fill(ds, "Chef");
           
            if (ds.Tables["Chef"].Rows.Count== 0)
            {
                SqlCommand cmd2 = new SqlCommand("SELECT * FROM Users WHERE username=@username AND password=@password", conn);
                cmd2.Parameters.AddWithValue("@username", username);
                cmd2.Parameters.AddWithValue("@password", password);
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2, "Users");
                if (ds2.Tables["Users"].Rows.Count == 0)
                {

                    Response.Write("Invalid Username or password");
               }
                else
                {
                    string name1 = txtUsername.Text;
                    string name2 = txtPassword.Text;
                    Session["Username"] = name1;
                    Session["Password"] = name2;
                    Response.Redirect("User.aspx");

                }
            }
            else
                {
                string name = txtUsername.Text;
                Session["Username"] = name;
                Response.Redirect("Chef.aspx");

                }
             
            

        }
        protected void validateRegister(object sender, EventArgs e)
        {
            string name = TxtName.Text;
            string username = usernametxt.Text;
            string password = passwordtxt.Text;
            string choice = TxtChoice.Text;
            SqlConnection conn = new SqlConnection("Server=DRAGONFLY\\SQLEXPRESS;Database=cookbookpro;Trusted_Connection=True");
            conn.Open();
            if (choice == "Chef")
            {

                string query = string.Format("insert into Chef(chef_name,Username,Password) values('{0}','{1}','{2}')"
                    , name, username, password);
                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.ExecuteNonQuery();
                conn.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Key", "alert('Registered Successfully')", true);
                Response.Redirect("Homepage.aspx");
                TxtChoice.Text = "";
                usernametxt.Text = "";
                passwordtxt.Text = "";
                TxtName.Text = "";
            }
            else
            {
                string query = string.Format("insert into Users(Username,Password,Name) values('{0}','{1}','{2}')", username, password, name);
                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.ExecuteNonQuery();
                conn.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Key", "alert('Registered Successfully')", true);
                Response.Redirect("Homepage.aspx");
                TxtChoice.Text = "";
                usernametxt.Text = "";
                passwordtxt.Text = "";
                TxtName.Text = "";
            }



        }
    }
}