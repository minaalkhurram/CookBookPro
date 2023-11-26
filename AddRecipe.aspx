<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRecipe.aspx.cs" Inherits="CookbookPro.WebForm4" %>

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
 </style>


    <title>Add Recipe</title>
</head>
<body>
    <form id="form1" runat="server">
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
             <h1>Add Recipe</h1><br />
             <asp:Label ID="RecName" runat="server">Recipe Name:</asp:Label>  
             <asp:TextBox ID="TxtName" runat="server" placeholder="Name" CssClass="input"></asp:TextBox><br /><br />
             <asp:Label ID="cat" runat="server"> Category:</asp:Label>  
             <asp:TextBox ID="Category" runat="server" placeholder="Category" CssClass="input"></asp:TextBox><br /><br />
            <asp:Label ID="type" runat="server"> Recipe Type:</asp:Label>  
             <asp:TextBox ID="RecipeType" runat="server" placeholder="Type" CssClass="input"></asp:TextBox><br /><br />
              <asp:Label ID="reg" runat="server"> Region:</asp:Label>  
             <asp:TextBox ID="region" runat="server" placeholder="region" CssClass="input"></asp:TextBox><br /><br />
              <asp:Label ID="cal" runat="server"> Calories:</asp:Label>  
             <asp:TextBox ID="calories" runat="server" placeholder="Calories" CssClass="input"></asp:TextBox><br /><br />
              <asp:Label ID="ser" runat="server"> Serving:</asp:Label>  
             <asp:TextBox ID="Servings" runat="server" placeholder="Servings" CssClass="input"></asp:TextBox><br /><br />
              <asp:Label ID="cook" runat="server"> Cooking time:</asp:Label>  
             <asp:TextBox ID="time" runat="server" placeholder="Cook time" CssClass="input"></asp:TextBox><br /><br />
              <asp:Label ID="chef" runat="server"> Chef:</asp:Label>  
             <asp:TextBox ID="chefid" runat="server" placeholder="Chef ID" CssClass="input"></asp:TextBox><br /><br />
            <asp:Button id="addbutton" OnClick="AddRecipe" Text="Add" runat="server" CssClass="btn" />
       
            <%--<textarea id="ingredients" name="ingredients"></textarea>--%>
        </article>
     
    </form>
</body>
</html>

