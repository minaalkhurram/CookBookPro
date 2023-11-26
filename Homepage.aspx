<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="CookbookPro.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style>
    body{

    background-size: 100% auto;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center; 
    padding-bottom: 80px;
    background-color: #FAF3EE;
}
html{
    height:100%;
}


 * {

    margin: 0px;
  
    padding: 0px;
  
    box-sizing: border-box;
  
  }
 .newnav{
    
    height:250px;
    width: 1100px;
    align-self: center;
    box-shadow: none;
    background-color:#ffeae0cb;
    margin:auto;
    margin-top: 420px;
    padding-bottom: 10px;
    box-shadow: #053B47;
    box-shadow: 8px 10px #e8b967a9;
    text-align: center;
 }
 p{
    color: #053B47;
  
    text-decoration: none;
  
    letter-spacing: 3px;
  
   /* font-weight: bold;*/
  margin-right: 15px;
  margin-left: 15px;
  margin-top: 2px;
  font-family:Verdana, Geneva, Tahoma, sans-serif;
  font-size:20px;
 
   
   /* text-shadow: 4px 5px #598B92;*/
 }
  
  .body-text {
  
    height:400px;
    width: 100%;

    background-size:cover;
   /* background-color:#FFEAE0;*/
    position: absolute;
    box-shadow: none;
    margin-bottom: 100px;
    padding-bottom: 120px;
    text-align: center;
    background-image: url(option1.jpg);
    
    
  }
  h1{
    color: #053B47;
  
    text-decoration: none;

    letter-spacing: 3px;
  line-height: 150px;
   /* font-weight: bold;*/
  
  font-size:100px;
    padding-top: 100px;
    text-shadow: 4px 5px #598B92;
    padding-bottom: 10px;
  
  }
  mark{
    background-color: #f3f2ed6a;
    color: #053B47;

  
  
  }
  nav {
  
    display: flex;
  
    justify-content: space-around;
  
    align-items: center;
  
    min-height: 8vh;
  
    background-color: #053B47;
  
    font-family:Verdana, Geneva, Tahoma, sans-serif;
  
  }
  
  .heading {
  
    color: #FAF3EE;

    text-transform: uppercase;
  
    letter-spacing: 5px;
    height:40px;
    width: 95px;
    background-image: url(logotexturecropped.jpg);
    background-size:cover;


  
  }
  
  .nav-links {
  
    display: flex;
  
    justify-content: space-around;
  
    width: 30%;
  
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
  
    padding: 14px 16px;
  
  }
  
  .nav-links a:hover:not(.active) {
  
    background-color: #E8B867;
  
  }
  
  .nav-links li a.active {
  
    background-color: #598B92;
  
  }
  .card {
    background-color: #598B92;

    padding: 1rem;
    text-align: center;
    border-radius: 30px;
    
    align-items: center;
    box-shadow: 8px 10px #e8b967a9;
    height: 200px;
  }
.card:hover{
background-image: url(imgbox2.jpg);
  display: block;
    background-position: center;
    background-size:contain

}
  .cards {
    max-width: 1200px;

    align-self: center;
    margin:auto;
    margin-top: 20px;
    display: grid;
    gap: 1rem;
  }
  @media (min-width: 900px) {
    .cards { grid-template-columns: repeat(3, 1fr); }
  }
  .boxes
  {
    font-style: Verdana, Geneva, Tahoma, sans-serif;
    text-align: center;
    vertical-align: middle;
    padding-top: 10px;
    margin-top: 45px;
    color:#FAF3EE;
    text-shadow: 4px 5px #053b4793;
    font-size:xx-large;
  }
  h4{
    font-style: Verdana, Geneva, Tahoma, sans-serif;
    text-align: center;
    vertical-align: middle;
    padding-top: 20px;
    margin-top: 60px;
    color:#053B47;
    font-size:xx-large;

  }
  a
  {
    font-style: Verdana, Geneva, Tahoma, sans-serif;
    text-align: center;
    vertical-align: middle;
    padding-top: 10px;
    margin-top: 45px;
    color:#FAF3EE;
    text-shadow: 4px 5px #053b4793;
    font-size:xx-large;
    text-decoration: none;


  }
</style>
    
        <title>Home</title>
    
      </head>

    <body>
      <!--Start of navigation bar-->
        <nav class="mainnav">

            <div class="heading">
      
             
      
            </div>
      
            <ul class="nav-links">
      
              <li><a class="active" href="Homepage.aspx">Home</a></li>
      
              <li><a href="AllChef.aspx">Chefs</a></li>
      
              <li><a href="AllRecipe.aspx">Recipes</a></li>
              <li><a  href="userProfile.html">Profile</a></li>
                  <li><a href="search.aspx">Search</a></li>


            </ul>
      
          </nav>
               <!--end of navigation bar-->
      
          <div class="body-text"><h1><mark>COOKBOOK <br>PRO</mark><br><hr></h1>
          </div>
         
        <nav class="newnav"><p>Welcome To Cook Book Pro !<br> Here we celebrate the joy of cooking, eating, and sharing delicious meals with family and friends!
           Whether you're a seasoned chef or a novice in the kitchen, our website is your ultimate destination for all things food. From easy-to-follow recipes and helpful
            cooking tips to food trends and culinary news, we have everything you need to satisfy your taste buds and expand your culinary skills. So join us on this gastronomic 
            journey and let's discover the wonderful world of food together
        </p></nav>
        <h4> --- Explore Popular Recipes ---</h4> 

   
<div class="cards">
        <div class="card"><p class="boxes"><a href="Alfredo Pasta.aspx">Alferedo Pasta</a></p></div>
        <div class="card"><p class="boxes"><a href="pepperoniPizza.html">Pepperoni Pizza</a></p></div>
        <div class="card"><p class="boxes"><a href="buffalowings.html">Buffalo Wings</a></p></div>
        <div class="card"><p class="boxes"><a href="Cookies.html">Chocolate Chip Cookies</a></p></div>
        <div class="card"><p class="boxes"><a href="Recipe.aspx">Spaghetti and Meatballs</a></p></div>
        <div class="card"><p class="boxes"><a href="RegisterLogin.aspx">Log Out</a></p></div>
      </div>
      
    </body>
</html>
