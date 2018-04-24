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

    <title>StomIT | Gestion </title>

    <!-- Bootstrap -->
    <link href=".././mysrc/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href=".././mysrc/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href=".././mysrc/vendors/nprogress/nprogress.css" rel="stylesheet">
     <!-- custom stomatis?© -->
	 <link href=".././mysrc/build/css/custom_stom.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href=".././mysrc/build/css/custom.min.css" rel="stylesheet">
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
                <h2 id="nomAgent" name="nomAgent">Hafidh</h2>	
              </div>
              <div class="clearfix">
				<h4 id="roleAgent" name="roleAgent">Role: Agent des prestations</h4> 
			  </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
				<li><a  href="/Stomise/ListeProduits"><i class="fa fa-home"></i>Produits</a></li>
				<li><a  href="Mouvement_Sortie.jsp"><i class="fa fa-home"></i>Bons Sortie</a></li>
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
                    <img src=".././images/img.jpg" alt="">Hafidh
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
              </ul>
			  <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Recherche de...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div-->
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col container" role="main">
			<form method="post" action="mouvement_Sortie_gest_bl_form.jsp">
			<div class="row row_form col-sm-12 div_border">
				 <h2 class="title_pos col-sm-6">Details du bon de livraison </h2>
				 <button type="submit" class="btn btn-success btn-xs col-sm-1" id="btn-imprimer" name="btn-imprimer"  onclick ='' >Imprimer</button>
				 <button type="button" class="btn btn-success btn-xs col-sm-1" id="btn-annuler" name="btn-annuler" onclick =' window.location= "gestion_bl.jsp";'>Annuler</button>
			</div>
			
			<div class="row row_form col-sm-12 marg_row">
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field" for="Nbl">N.BL </label>
							<div class="col-sm-6">
							  <input type="text" id="Nbl" name="Nbl" class="form-control rad_input" placeholder="Default Input">
							</div>
			  </div>
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field" for="date">Date </label>
							<div class="col-sm-6">
							  <input type="text" id="date" name="date" class="form-control rad_input" placeholder="Default Input">
							</div>
			  </div>
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field" for="lieu">Lieu </label>
							<div class="col-sm-6">
							  <input type="text" id="lieu" name="lieu" class="form-control rad_input" placeholder="Default Input">
							</div>
			  </div>
			  
			</div>
			<div class="row row_form col-sm-12 marg_row">
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field" for="nDevis">N.Devis </label>
							<div class="col-sm-6">
							  <input type="text" id="nDevis" name="nDevis" class="form-control rad_input" placeholder="Default Input">
							</div>
			  </div>
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field" for="dateLimite">Date limite </label>
							<div class="col-sm-6">
							  <input type="text" id="dateLimite" name="dateLimite" class="form-control rad_input" placeholder="Default Input">
							</div>
			  </div>
			  
			  
			</div>
			<div class="row row_form col-sm-12 marg_row">
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field" for="nPatient">N.Patient </label>
							<div class="col-sm-6">
							  <input type="text" id="nPatient" name="nPatient" class="form-control rad_input" placeholder="Default Input">
							</div>
			  </div>
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field" for="nMedecin">N.Medecin </label>
							<div class="col-sm-6">
							  <input type="text" id="nMedecin" name="nMedecin" class="form-control rad_input" placeholder="Default Input">
							</div>
			  </div>
			  
			  
			</div>
			</form>
			
			<h3 class="title_pos_produit">Liste des produits </h3>
			<div class="TABLE_C TABLE_P">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            <th>
                              <input type="checkbox" id="check-all" class="flat">
                            </th>
                            <th class="column-title">N </th>
							<th class="column-title">Reference produit </th>
                            <th class="column-title">Designation </th>
                            <th class="column-title">PU </th>
                            <th class="column-title">Quantite </th>
                            <th class="column-title">%TVA </th>
                            <th class="column-title">HT </th>
							<th class="column-title">TTC </th>
                            <th class="column-title no-link last"><span class="nobr">Action</span>
                            </th>
                            <th class="bulk-actions" colspan="7">
                              <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                            </th>
                          </tr>
                        </thead>

                        <tbody>
                          <tr class="even pointer">
                            <td class="a-center " id="" name="">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" " id="" name=""></td>
                            <td class=" " id="" name=""></td>
                            <td class=" " id="" name=""></td>
                            <td class=" " id="" name=""></td>
                            <td class=" " id="" name=""></td>
                            <td class=" " id="" name=""></td>
							<td class=" " id="" name=""></td>
							<td class=" " id="" name=""></td>				
                            <td class="apercu_c" id="" name="" N.Medecin ><a href="#">Apercu</a>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
					
			<div class="case_montant" >
				<div class="row row_form  marg_col" >
				  <div class="form-group   ">
								<label class="control-label lab_field" for="MontantAPayer">Montant a payer par l'assure/label>
								<div class="">
								  <input type="text" id="MontantAPayer" name="MontantAPayer" class="form-control rad_input" placeholder="Default Input">
								</div>
				  </div>			  
				</div>
				<div class="row row_form   marg_col">
				  <div class="form-group ">
								<label class="control-label lab_field" for="MontantARembourser">Montant a rembourser</label>
								<div class="">
								  <input type="text" id="MontantARembourser" name="MontantARembourser" class="form-control rad_input" placeholder="Default Input">
								</div>
				  </div>			  
				</div>
			</div>

        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
             
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
  </body>
</html>
