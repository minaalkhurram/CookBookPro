<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddIngredients.aspx.cs" Inherits="CookbookPro.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Book Antiqua';
  }
  body {
    background-color:  #598b92be;
    font-family: 'Roboto', sans-serif;
  }
  .label{
      color:black;
      text-decoration-style:solid;
      text-transform:full-width;
  }
  nav {
  
    display: flex;
  
    justify-content: space-around;
  
    align-items: center;
  
    min-height: 8vh;
  
    background-color: #053B47;
  
    
  
  }

  .heading {
  
    color: #FAF3EE;
  
    text-transform: uppercase;
  
    letter-spacing: 5px;
    height:40px;
    width: 95px;
    background-image: url(logotexturecropped.jpg);
    background-size:cover;
    padding-right: -20px;
  
  }
  
  .nav-links {
  
    display: flex;
  
    justify-content: space-around;
  
    width: 30%;
    height: 20px;
  
  }
  .text{
      
    display: flex;
  
    justify-content: space-around;
  
    width: 30%;
  }
  
  .nav-links li {
  
    list-style: none;
  
  }
  
  .nav-links a {
  
    color: #FAF3EE;
  
    text-decoration: none;
  
    letter-spacing: 3px;
  
   /* font-weight: bold;*/
  
    font-size: 14px;
  
    padding: 10px 20px;
    
  
  }
  
  .nav-links a:hover:not(.active) {
  
    background-color: #E8B867;
  
  }
  
  .nav-links li a.active {
  
    background-color: #598B92;
  
  }
  
  article {
    padding: 0px 35px 40px 35px; 
    border-radius: 20px;
    margin-top: 50px;
    margin-left: 250px;
    width: 850px;
    height: 100%;
    background-color: #FAF3EE;
  }
  h1 {
    padding-top: 50px;
    padding-bottom: 18px;
    text-align: center;
    color: #1B1B1B;
    font-weight: 700;
    font-size: 25px;
  }

  ul, ol {
    list-style-position: inside;
    font-size: 16px;
    font-weight: 400;
    color: #39393A;
  }
  li {
    margin-bottom: 28px;
  }
 .input{
  width: 100%;
  padding: 15px 15px;
  border: 0;
  font-size: 12px;
  background: #5e92991a;
  border-radius: 10px;
}
.btn{
  margin-top: 20px;
  background: #5e9299e8;
  padding: 10px;
  text-align: center;
  color: #fff;
  width: 300px;
  margin-left: 250px;
  justify-content:center;
  text-transform: uppercase;
  letter-spacing: 3px;
  font-weight: bold;
  border-radius: 10px;
  border-color: #5e9299e8;
 
  
}
.input2{
    width: 100%;
    height:  80px;
  padding: 15px 15px;
  border: 0;
  font-size: 12px;
  background: #5e92991a;
  border-radius: 10px;
}
.input3{
     
  width: 100%;
  padding: 15px 15px;
  border: 0;
  font-size: 12px;
  background: white;
  
}
.h3{
    text-align: center;
    font-size: large;
    text-decoration:solid;
}
     </style>
    
     
     
    <title>Add Ingredients</title>
</head>
<body>
    <form id="form1" runat="server">
  <%--     <script>
           function addIngredient() {
               var table = document.getElementById("ingredients");
               var row = table.insertRow(-1);
               var cell1 = row.insertCell(0);
               var cell2 = row.insertCell(1);
               cell1.innerHTML = "<asp:TextBox runat='server' ID='txtIngredient' name='ingredients[]'></asp:TextBox>";
               cell2.innerHTML = "<asp:TextBox runat='server' ID='txtQuantity' name='quantities[]'></asp:TextBox>";
           }
       </script>--%> 
        <div>
                   <nav class="mainnav">

            <div class="heading">
      
             
      
            </div>
      
            <ul class="nav-links">
      
              <li><a  href="Homepage.aspx">Home</a></li>
      
              <li><a href="AllChef.aspx">Chefs</a></li>
      
              <li><a href="AllRecipe.aspx">Recipes</a></li>
              <li><a  href="userProfile.html">Profile</a></li>
                  <li><a href="search.aspx">Search</a></li>


            </ul>
      
          </nav>

        <article>
             <h1>Add Ingredients</h1><br />
    
   <asp:Label ID="RecID" runat="server">Recipe ID:</asp:Label>  
             <asp:TextBox ID="TxtID" runat="server" placeholder="ID" CssClass="input"></asp:TextBox><br /><br />      
 

             
            <label for="ingredients">Ingredients:</label>
            <asp:Textbox ID="ing" name="Ingredients" runat="server" placeholder="ingredient names" CssClass="input2"></asp:Textbox><br /><br />
            <label for="Quantities">Quantity:</label>
            <asp:Textbox ID="quan" name="Quantity" runat="server" placeholder="quantities of ingredients mentioned above" CssClass="input2"></asp:Textbox><br /><br />
            
            <asp:Button ID="AddIngredient" runat="server" CssClass="btn" Text="Add Ingredients" OnClick="AddIng" />


        </article>
     
        </div>
    </form>
</body>
</html>
