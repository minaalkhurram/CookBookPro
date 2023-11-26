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

    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Server=DRAGONFLY\\SQLEXPRESS;Database=cookbookpro;Trusted_Connection=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }
        protected void AddRecipe(object sender, EventArgs e)
        {
            string recipename = TxtName.Text;
            string cat = Category.Text;
            string type = RecipeType.Text;
            string reg = region.Text;
            string cal = calories.Text;
            string ser = Servings.Text;
            string cook = time.Text;
            string chef = chefid.Text;
            string query = string.Format("insert into Recipes values('{0}','{1}','{2}','{3}',{4},{5},'{6}',{7})"
             , recipename, cat, type, reg, cal, ser, cook, chef);
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Key", "alert('Recipe added Successfully')", true);
            Response.Write("Recipe added successfully, now add ingredients");
            Response.Redirect("AddIngredients.aspx");
            TxtName.Text = "";
            Category.Text = "";
            region.Text = "";
            calories.Text = "";
            RecipeType.Text = "";
            Servings.Text = "";
            time.Text = "";
            chefid.Text = "";
            conn.Open();
            query = string.Format("update chef set noOfRecipes=noOfRecipes+1 where chef_id=" + Convert.ToInt32(chefid.Text));
            SqlCommand cmd2 = new SqlCommand(query, conn);
            cmd2.ExecuteNonQuery();
            conn.Close();



        }
    }
}