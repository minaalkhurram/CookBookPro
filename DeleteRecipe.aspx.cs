using System;
using System.Collections;
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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Server=DRAGONFLY\\SQLEXPRESS;Database=cookbookpro;Trusted_Connection=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }
        protected void DelRecipe(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from Recipes where RecipeName='" + TxtName.Text + "' and RecipeID='" + id.Text + "'";
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            TxtName.Text = "";
            id.Text = "";
            Response.Write("Recipe Deleted");
            Response.Redirect("Chef.aspx");


        }

    }

}