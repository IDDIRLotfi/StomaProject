<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr" style="background: rgb(0, 174, 172)">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>StomIT | Login </title>

    <!-- Bootstrap -->
    <link href="mysrc/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="mysrc/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="mysrc/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="mysrc/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="mysrc/build/css/custom.min.css" rel="stylesheet">
  </head>
   
  <body class="login " style=" overflow: hidden">
  <div style="background:rgb(0, 174, 172)">
  <img src="images/Sans titre-1.png"  style="margin-left:630px;margin-top:20px;background:rgb(0, 174, 172);height:100px" align="middle" alt="..."  >
    </div>
	<div>
      
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content" style="text-shadow:0 0px 0 #000">
		  <h1 style="color:rgb(255, 255, 255);letter-spacing:-.0">Veuillez vous connecter</h1>
            
            <form method="post" action="login">
              
              <div>
                <input type="text" class="form-control" style="height: 43px" required="true" id="username" name="username" placeholder=" Nom d'utilisateur " required="" />
              </div>
              <div>
                <input type="password" class="form-control" required="true" style="height: 43px"  id ="pwd" name="pwd"placeholder="Mot de passe" required="" />
              </div>
			  <div>
                <input type="checkbox" name="hobbies[]" style="color:#FFFFFF"   class="" > </input>
				<a class="" href="#"  style ="color:#FFFFFF">Rester connecté</a>
                <a class="" href="#"  style ="margin-left: 80px;color:#FFFFFF">Mot de passe oublié?</a>
                <a class=""  style ="margin-left: 180px;color:#CDDC39"><c:if test="${verification}">Utilisateur n'existe pas</c:if><c:if test="${!verification}"></c:if> </a>
                  
                  
			 </div>
				<br/>		
			<div>	
             
           	</div>
			
              <div>
                <button type="submit" class="btn btn-default " id="btn" name="btn"  value="connexion" style="height:43px;border-color:rgb(0, 97, 95);
                background-color:rgb(0, 97, 95);text-align:center;color:rgb(255, 255, 255); font-size:17px "  
                  >Se connecter</button>
              </div>
			
                <br />

              </div>
            </form>
			
          </section>
		  
        </div>

			<div class="nav_menu" style="width:1366px;color:rgb(0, 0, 0);margin-top:350px; background:rgb(207, 240, 239) ">
             <!--        <h1 style="text-align:center">StomIT</h1> -->
				  <img src="images/logo.png"  style="margin-left:630px; background:rgb(207, 240, 239);height:60px" align="middle" alt="..."  >
                  <p style="text-align:center">©2017 All Rights Reserved. FLANIT Privacy and Terms</p>
                </div>
        <div id="register" class="animate form registration_form">
         
        </div>
      </div>
    </div>
  </body>
</html>
