<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title> StomIT | Gestion Stock </title>

    <!-- Bootstrap -->
    <link href=".././mysrc/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href=".././mysrc/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href=".././mysrc/vendors/nprogress/nprogress.css" rel="stylesheet">
     <!-- custom stomatis?© -->
	 <link href=".././mysrc/build/css/custom_stom_2.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href=".././mysrc/build/css/custom.min_2.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
		  
            <div class="navbar nav_title" style="border: 0;background:#023232">
              <a href="index.jsp" class="site_title"> <img src=".././images/Sans titre-1.png" style="height:50px" alt="..."><span>  Stomise</span></a>
            </div>
					
			
            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src=".././images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Bienvenue,</span>
                <h2 id="nomAgent" name="nomAgent">Farouk</h2>	
              </div>
              <div class="clearfix">
				<h4 id="roleAgent" name="roleAgent">Role: Gestionnaire du Stock</h4>
			  </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
				<li><a  href="/Stomise/ListeProduits"><i class="fa fa-home"></i>Produits</a></li><li><a  href="Mouvement_Sortie.jsp"><i class="fa fa-home"></i>Bons Sortie</a></li><li><a  href="/Stomise/ListeProduits"><i class="fa fa-home"></i>Produits</a></li>
				<li><a  href="Mouvement_Entree.jsp"><i class="fa fa-home"></i> Bons d'Entree</a></li>
				<li><a  href="Mouvement_Fich_Stock.jsp"><i class="fa fa-home"></i>Fiche du Stock</a></li>

                </ul>
              </div>


            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.jsp">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
				
                <!--li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src=".././images/img.jpg" alt="">Farouk
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="login.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src=".././images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src=".././images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src=".././images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src=".././images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul-->
			  
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main" style="min-height: 3771px;">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Details Du Produit</h3>
              </div>
            </div>
            <div class="clearfix"></div>
			
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  
                    
                    <div class="clearfix"></div>
                  
                  <div class="x_content">
                    <br>
                    <form id="demo-form2" method ="post" data-parsley-validate="" action="Mouvement_Bon_Entree_Tempo.jsp" class="form-horizontal form-label-left input_mask" novalidate="">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="refernece-produit">Refernece Produit <span class="required"> *</span> </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="refernece-produit" name="refernece-produit" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="designation">Designation <span class="required"> *</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="designation" name="designation" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
					  
					  <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="unite-mesure">Unite Mesure <span class="required"> *</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="unite-mesure" name="unite-mesure" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
					  
					  <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="prix-unitaire">Prix Unitaire <span class="required"> *</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="prix-unitaire" name="prix-unitaire" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
					  
					  <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="qte-entree"> Qte.Entree <span class="required"> *</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="qte-entree" name="qte-entree" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
					  
					<div class="clearfix"></div>
					  
					  
					  
					  
					  <div class="form-group">
					  <div class="title_left">
					  <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
					  
					  </div>
					  </div>
					  <div class="title_right">
					  <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" id="test">
					  <a href="Mouvement_Entree.jsp"> <button class="btn btn-primary" type="button" id ="id-annuler" name="annuler">Annuler</button></a>
					  
					  
					  <button type="submit" class="btn btn-success" id="id-ok" name="ok" > <span class="glyphicon glyphicon-file" aria-hidden="true"></span> OK</button>
					  
					  
					    
                        </div>
						</div>
                        </div>
						
                      </div>
                      
                    </form>
                  </div>
                </div>
              </div>
            </div>

            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            StomIT by <a href="https://flanit.dz">FLANIT</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src=".././mysrc/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src=".././mysrc/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src=".././mysrc/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src=".././mysrc/vendors/nprogress/nprogress.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src=".././mysrc/build/js/custom.min.js"></script>
	<style>
	#test{
	margin-left:700px;
	margin-top:40px;
	}
	</style>
  </body>
</html>
