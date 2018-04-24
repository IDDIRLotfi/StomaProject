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

    <title>StomIT | Gestion Stock</title>

    <!-- Bootstrap -->
    <link href=".././mysrc/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href=".././mysrc/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href=".././mysrc/vendors/nprogress/nprogress.css" rel="stylesheet">
     <!-- custom stomatisé -->
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
              <a href="index.jsp" class="site_title"> <img src=".././images/Sans titre-1.png" style="height:50px" alt="..."><span>  Stomisé</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src=".././images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Bienvenue,</span>
                <h2>John Doe</h2>	
              </div>
              <div class="clearfix">
				<h4>Role: Agent des prestations</h4>
			  </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a  href="#"><i class="fa fa-home"></i> Accueil</a></li>
				  <li><a  href="#"><i class="fa fa-home"></i> Gestion du Stock  </a></li>
				  
                 
                  
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
                <a id="menu_toggle"><i class="fa fa-bars" style="background= "></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
				
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src=".././images/img.jpg" alt="">John Doe
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
			<!--   <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search" id="test3" style="margin-left:60px">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Recherche de...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div> -->
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
		    
		  
					 <div class="row row_form col-sm-12 div_border stock_view">
						 <label class="col-sm-3" id="test" for="last-name" style="width:27%">Afficher par </label>
						 <div class="col-sm-3">
							<select id="heard" class="form-control col-sm-3" required="required">
								<option value="">Choisir..</option>
								<option value="Poche_1_piece">Poche 1 piece</option>
								<option value="Poche_2_pieceS">Poche 2 pieces</option>
								<option value="Accessoire">Accessoire</option>
							</select>
						 </div>
						 <button type="button" class="btn btn-success btn-xs col-sm-1 btn_stock_view"  onclick ='window.location= "Gest_Stock.jsp";' >Ajouter</button>
						 <button type="button" class="btn btn-success btn-xs col-sm-1"  onclick =''>Modifier</button>
						 <button type="button" class="btn btn-success btn-xs col-sm-1"  onclick =' '>Supprimer</button>
					  </div>
		  
					  
		 				  <div class="clearfix"></div>
           <div class="TABLE_C" style="margin-top: 23px;"> 
		   
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            <th>
                              <input type="checkbox" id="check-all" class="flat">
                            </th>
                            <th class="column-title">N° </th>
                            <th class="column-title">Référence Produit </th>
                            <th class="column-title">Designation </th>
                            <th class="column-title">Prix Unit </th>
                            <th class="column-title">Catégorie </th>
                            <th class="column-title">Dimension </th>
							<th class="column-title">Quantité Stock </th>
                            <!--<th class="column-title no-link last"><span class="nobr">Action</span>
                            </th>
                            <th class="bulk-actions" colspan="7">
                              <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                            </th>-->
                          </tr>
                        </thead>

                        <tbody>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class="a-right a-right "></td>
                            <td class=" last"><a href="#"></a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class="a-right a-right "></td>
                            <td class=" last"><a href="#"></a>
                            </td>
                          </tr>

                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" "></td>
                            <td class=" "> </td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class="a-right a-right "></td>
                            <td class=" last"><a href="#"></a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class=" "></td>
                            <td class="a-right a-right "></td>
                            <td class=" last"><a href="#"></a>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>

            <div class="clearfix"></div>
			<ul class="pager">
				<li><a href="#">Precedent</a></li>
				<li><a href="#"> Suivant </a></li>
			</ul>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            StomIT by <a href="https://flanit.dz">FLANIT</a>
          </div>
          <div class="clearfix custom-footer"></div>
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
	margin-right:-204px;
	margin-left:-10px;
	margin-top:6px;
	}
	#test2 {
    margin-right: -190px;
    margin-left: 404px;
    margin-top: 0px;
}
#test3 {
    
    margin-top: -30px;
	margin-left: 80%;
}
	
	</style>
	 <link href=".././mysrc/build/css/custom_stom_2.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href=".././mysrc/build/css/custom.min_2.css" rel="stylesheet">
	
  </body>
</html>
