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

<title>StomIT | Accueil</title>

<!-- Bootstrap -->
<link href=".././mysrc/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href=".././mysrc/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href=".././mysrc/vendors/nprogress/nprogress.css" rel="stylesheet">

<!-- Custom Theme Style -->
<link href=".././mysrc/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">

	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title"
						style="border: 0; background: #023232">
						<a href=".././Stomise/Stomise/1_AgentDesPrestations/accueil.jsp" class="site_title"> <img
							src=".././images/Sans titre-1.png" style="height: 50px" alt="..."><span>
								Stomisé</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src=".././images/users/hafidh.jpg" alt="..." class="img-circle profile_img">
						</div>
						
						       
              				<div class="profile_info">
                		  	 <span>Bienvenue,</span>
                          		 <h2 id="nomAgent" name="nomAgent">${sessionScope.utilisateur.nom}</h2>	
			             	</div>
			            
					
						<div class="clearfix" style="colir:#FFFFFF">
							<h4 id="roleAgent" name="roleAgent">Role: ${sessionScope.utilisateur.fonction}</h4>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3></h3>
							<ul class="nav side-menu">
								<li><a href="/Stomise/1_AgentDesPrestations/accueil.jsp"><i class="fa fa-home"></i>
										Accueil</a></li>
								<li><a visibility href="/Stomise/GestionDevisServ"><i
										class="fa fa-file-text-o"></i> Gestion des devis </a></li>
								<li><a href="/Stomise/GestionBL"><i
										class="fa fa-indent"></i> Gestion des BL</a></li>
								<li><a href="/Stomise/GestionPc"><i class="fa fa-link"></i>
										Prise en charge</a></li>
								<li><a href="/Stomise/GestionBLF"><i class="fa fa-outdent"></i>
										Gestion de BL facturés</a></li>
								<li><a href="/Stomise/GestionFacture"><i
										class="fa fa-credit-card"></i> Gestion des factures</a></li>
								<li><a href="gestion_bordereau.jsp"><i
										class="fa fa-link"></i> Gestion des bordereaux</a></li>


							</ul>
						</div>


					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
							href="login.html"> <span class="glyphicon glyphicon-off"
							aria-hidden="true"></span>
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

							<li class=""><a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <img src=".././images/users/hafidh.jpg" alt="">${sessionScope.utilisateur.nom}
									<span class=" fa fa-angle-down"></span>
							</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="/Stomise/Login"><i
											class="fa fa-sign-out pull-right"></i> Déconnexion</a></li>
								</ul></li>

							<li role="presentation" class="dropdown"><a
								href="javascript:;" class="dropdown-toggle info-number"
								data-toggle="dropdown" aria-expanded="false"> <i
									class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
							</a>
								<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
									role="menu">

								</ul></li>
						</ul>
						<!-- >div
							class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Recherche de..."> <span
									class="input-group-btn">
									<button class="btn btn-default" type="button">Go!</button>
								</span>
							</div>
						</div-->
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>Bonjour cher utilisateur !</h3>
						</div>


					</div>

					<div class="clearfix"></div>

					<div class="row">
						<div class="col-md-8 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>${sessionScope.utilisateur.nom} ${sessionScope.utilisateur.prenom}</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Settings 1</a></li>
												<li><a href="#">Settings 2</a></li>
											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="col-sm-7">
									<div class="x_content">Adresse mail : ${sessionScope.utilisateur.email} </div>
									<div class="x_content">N° Téléphone :  ${sessionScope.utilisateur.numTeleph}</div>
									<div class="x_content">Rôle :  ${sessionScope.utilisateur.fonction}</div>

								</div>
								<div class="col-sm-4">
									<img src=".././images/users/hafidh.jpg" alt="..."
										style="height: 170px; width: 200px"></img>
								</div>
								<div class="clearfix"></div>
								<div>
									<h4>Pourcentage du travail</h4>
								</div>
								<div class="widget_summary">

									<div class="w_center w_55">
										<div class="progress">
											<div class="progress-bar bg-green" role="progressbar"
												aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"
												style="width: 10%;">
												<span class="sr-only">10%</span>
											</div>
										</div>
									</div>

									<div class="clearfix"></div>
								</div>
							</div>
						</div>


						<div class="col-md-4 col-sm-6 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>Météo d'aujourd'hui</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Settings 1</a></li>
												<li><a href="#">Settings 2</a></li>
											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content" style="display: block;">
									<div class="row">
										<div class="col-sm-12">
											<div class="temperature">
												<b>Mardi</b>, 07:30 AM <span>F</span> <span><b>C</b>
												</span> <span><h2>
														Alger <br> <i>Nuageux</i>
													</h2></span>
												<div class="col-sm-12">
													<div class="weather-text pull-right">
														<h3 class="degrees">23</h3>
													</div>
												</div>
											</div>
										</div>
									</div>


									<div class="clearfix"></div>


									<div class="row weather-days">
										<div class="col-sm-2">
											<div class="daily-weather">
												<h2 class="day">Sam</h2>
												<h3 class="degrees">25</h3>


												</span>
												<h5>
													15 <i>km/h</i>
												</h5>
											</div>
										</div>
										<div class="col-sm-2">
											<div class="daily-weather">
												<h2 class="day">Dim</h2>
												<h3 class="degrees">25</h3>

												<h5>
													12 <i>km/h</i>
												</h5>
											</div>
										</div>
										<div class="col-sm-2">
											<div class="daily-weather">
												<h2 class="day">Lun</h2>
												<h3 class="degrees">27</h3>

												<h5>
													14 <i>km/h</i>
												</h5>
											</div>
										</div>
										<div class="col-sm-2">
											<div class="daily-weather">
												<h2 class="day">Mar</h2>
												<h3 class="degrees">28</h3>

												<h5>
													15 <i>km/h</i>
												</h5>
											</div>
										</div>
										<div class="col-sm-2">
											<div class="daily-weather">
												<h2 class="day">Mer</h2>
												<h3 class="degrees">28</h3>

												<h5>
													11 <i>km/h</i>
												</h5>
											</div>
										</div>
										<div class="col-sm-2">
											<div class="daily-weather">
												<h2 class="day">Jeu</h2>
												<h3 class="degrees">26</h3>

												<h5>
													10 <i>km/h</i>
												</h5>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>

						</div>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>Actuallité</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Settings 1</a></li>
												<li><a href="#">Settings 2</a></li>
											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div class="dashboard-widget-content">

										<ul class="list-unstyled timeline widget">
											<li>
												<div class="block">
													<div class="block_content">
														<h2 class="title">
															<a>Who Needs Sundance When You’ve
																Got&nbsp;Crowdfunding?</a>
														</h2>
														<div class="byline">
															<span>13 hours ago</span> by <a>Jane Smith</a>
														</div>
														<p class="excerpt">
															Film festivals used to be do-or-die moments for movie
															makers. They were where you met the producers that could
															fund your project, and if the buyers liked your flick,
															they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
														</p>
													</div>
												</div>
											</li>
											<li>
												<div class="block">
													<div class="block_content">
														<h2 class="title">
															<a>Who Needs Sundance When You’ve
																Got&nbsp;Crowdfunding?</a>
														</h2>
														<div class="byline">
															<span>13 hours ago</span> by <a>Jane Smith</a>
														</div>
														<p class="excerpt">
															Film festivals used to be do-or-die moments for movie
															makers. They were where you met the producers that could
															fund your project, and if the buyers liked your flick,
															they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
														</p>
													</div>
												</div>
											</li>
											<li>
												<div class="block">
													<div class="block_content">
														<h2 class="title">
															<a>Who Needs Sundance When You’ve
																Got&nbsp;Crowdfunding?</a>
														</h2>
														<div class="byline">
															<span>13 hours ago</span> by <a>Jane Smith</a>
														</div>
														<p class="excerpt">
															Film festivals used to be do-or-die moments for movie
															makers. They were where you met the producers that could
															fund your project, and if the buyers liked your flick,
															they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
														</p>
													</div>
												</div>
											</li>
											<li>
												<div class="block">
													<div class="block_content">
														<h2 class="title">
															<a>Who Needs Sundance When You’ve
																Got&nbsp;Crowdfunding?</a>
														</h2>
														<div class="byline">
															<span>13 hours ago</span> by <a>Jane Smith</a>
														</div>
														<p class="excerpt">
															Film festivals used to be do-or-die moments for movie
															makers. They were where you met the producers that could
															fund your project, and if the buyers liked your flick,
															they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
														</p>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /page content -->

	<!-- footer content -->
	<footer>
		<!--       <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div> -->
	</footer>
	<!-- /footer content -->
	</div>
	</div>

	<!-- jQuery -->
	<script src="../vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="../vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="../vendors/nprogress/nprogress.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="../build/js/custom.min.js"></script>
</body>
</html>
