using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using WebGrease.Activities;
using System;

namespace CookbookPro
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Server=DRAGONFLY\\SQLEXPRESS;Database=cookbookpro;Trusted_Connection=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void AddIng(object sender, EventArgs e)
        {
            string ID = TxtID.Text;
            int v = int.Parse(ID);
            int recipeId = v;
            string ingredientNames = ing.Text;
            string[] ingredientArray = ingredientNames.Split(',');
            string Quantities = quan.Text;
            string[] quantityArray = Quantities.Split(',');
            int i = 0;
            foreach (string ingredientName in ingredientArray)
            {


                string selectQuery = "SELECT IngredientId FROM Ingredients WHERE Ingredientname = @Name";
                using (SqlCommand selectCommand = new SqlCommand(selectQuery, conn))
                {
                    selectCommand.Parameters.AddWithValue("@Name", ingredientName);
                    object ingredientId = selectCommand.ExecuteScalar();
                    if (ingredientId == null)
                    {
                        // If the ingredient doesn't exist, insert it into the Ingredients table and retrieve its new ID
                        string insertQuery = "INSERT INTO Ingredients (Ingredientname) VALUES (@Name); SELECT SCOPE_IDENTITY()";
                        using (SqlCommand insertCommand = new SqlCommand(insertQuery, conn))
                        {
                            insertCommand.Parameters.AddWithValue("@Name", ingredientName);
                            ingredientId = insertCommand.ExecuteScalar();
                        }
                    }

                    // Insert the recipe-ingredient relationship into the RecipeIngredients table
                    string recipeIngredientsQuery = "INSERT INTO [dbo].[recipe_ingredients] ( IngredientId,Ingredientname,recipe_id,quantity) VALUES ( @IngredientId,@Name,@RecipeId,@quantity)";
                    using (SqlCommand recipeIngredientsCommand = new SqlCommand(recipeIngredientsQuery, conn))
                    {
                        string quantity = quantityArray[i];
                        recipeIngredientsCommand.Parameters.AddWithValue("@RecipeId", recipeId);
                        recipeIngredientsCommand.Parameters.AddWithValue("@Name", ingredientName);
                        recipeIngredientsCommand.Parameters.AddWithValue("@quantity", quantity);
                        recipeIngredientsCommand.Parameters.AddWithValue("@IngredientId", ingredientId);
                        recipeIngredientsCommand.ExecuteNonQuery();

                    }
                }
                i++;

                TxtID.Text = "";
                ing.Text = "";
                quan.Text = "";
            }
            Response.Write("Ingredients added to recipe successfully!");
            Response.Redirect("Chef.aspx");

        }


    }
}

