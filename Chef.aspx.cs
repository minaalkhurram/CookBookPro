using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookbookPro
{
    public partial class Chef1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["Username"]==null)
            {
                Response.Redirect("RegisterLogin.aspx");
            }
            else
            {
                //string username = Session["Username"].ToString();
                //string connectionString = "Server=DRAGONFLY\\SQLEXPRESS;Database=cookbookpro;Trusted_Connection=True";

                //string query = "SELECT chef_Id FROM Chef WHERE chef_name = @Username";
                //SqlConnection connection = new SqlConnection(connectionString);
                //SqlCommand command = new SqlCommand(query, connection);
                //command.Parameters.AddWithValue("@Username", username);

                //connection.Open();
                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.Read())
                //{
                //    string chefId = reader["chef_Id"].ToString();
                //    // Do something with the chefId value, such as print it to the console
                //    Console.WriteLine("Chef ID: " + chefId);
                //}
                //connection.Close();

                string username = Session["Username"].ToString();
                string connectionString = "Server=DRAGONFLY\\SQLEXPRESS;Database=cookbookpro;Trusted_Connection=True";

                string query = "Select chef_Id,chef_name,speciality,email,Bio,Pic from Chef WHERE Username=@Username ";
                SqlConnection connection = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                reptProduct.DataSource = reader;
                reptProduct.DataBind();

                reader.Close();


                string query2 = "Select chef_Id from Chef WHERE Username=@Username ";
                SqlCommand command2 = new SqlCommand(query2, connection);
                command2.Parameters.AddWithValue("@Username", username);
                SqlDataReader reader2 = command.ExecuteReader();

                int ID = 0;
                while(reader2.Read())
                {
                    ID = reader2.GetInt32(0);
                }
                reader2.Close();
                string query1 = "Select RecipeID,RecipeName from Recipes where ChefID=@ID";
                SqlCommand command1 = new SqlCommand(query1, connection);
                command1.Parameters.AddWithValue("@ID", ID);
                SqlDataReader reader1 = command1.ExecuteReader();
                Repeater1.DataSource = reader1;
                Repeater1.DataBind();

                reader1.Close(); 
               
                //string username = Session["Username"].ToString();
                //string connectionString = "Server=DRAGONFLY\\SQLEXPRESS;Database=cookbookpro;Trusted_Connection=True";

                //string query = "SELECT chef_Id, chef_name, speciality, email, Bio, Pic FROM Chef WHERE Username=@Username";
                //SqlConnection connection = new SqlConnection(connectionString);
                //SqlCommand command = new SqlCommand(query, connection);
                //command.Parameters.AddWithValue("@Username", username);

                //connection.Open();
                //SqlDataReader reader = command.ExecuteReader();
                //SqlDataReader reader2 = reader;
                //reptProduct.DataSource = reader;
                //reptProduct.DataBind();
                //string chefId = "";

                //if (reader2.HasRows)
                //{
                //    while (reader2.Read())
                //    {
                //        chefId = reader2["chef_Id"].ToString();
                //    }
                //}


                //reptProduct.DataSource = reader;
                //reptProduct.DataBind();

                //connection.Close();

                // Now the variable chefId contains the value of chef_Id from the query result.
               
                connection.Close();
            }
          
        }
        protected void clickityclick(object sender, EventArgs e1)
        {
            Response.Redirect("Recipe.aspx");
        }
        protected void reptProduct_ItemCommand(object source, RepeaterCommandEventArgs e)
            { }
        protected void reptProduct_ItemCommand1(object source, RepeaterCommandEventArgs e)
        { }
        
    }
}