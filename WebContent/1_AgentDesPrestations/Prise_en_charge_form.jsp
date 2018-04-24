<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>StomIT | Gestion</title>

<!-- Bootstrap -->
<link href="mysrc/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="mysrc/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="mysrc/vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- custom stomisé -->
<link href="mysrc/build/css/custom_stom.css" rel="stylesheet">
<!-- Custom Theme Style -->
<link href="mysrc/build/css/custom.min.css" rel="stylesheet">

<link href="mysrc/vendors/dropzone/dist/min/dropzone.min.css"
	rel="stylesheet">
</head>

<body class="nav-md">

	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title"
						style="border: 0; background: #023232">
						<a href="index.html" class="site_title"> <img
							src="images/Sans titre-1.png" style="height: 50px" alt="..."><span>
								Stomisé</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="images/img.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Bienvenue,</span>
							<h2 id="nomAgent" name="nomAgent">Hafidh</h2>
						</div>
						<div class="clearfix">
							<h4 id="" >Role: Agent des prestations</h4>
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
							href="login.jsp"> <span class="glyphicon glyphicon-off"
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
								aria-expanded="false"> <img src="images/img.jpg" alt="">Hafidh
									<span class=" fa fa-angle-down"></span>
							</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="javascript:;"> Profile</a></li>
									<li><a href="javascript:;"> <span
											class="badge bg-red pull-right">50%</span> <span>Settings</span>
									</a></li>
									<li><a href="javascript:;">Help</a></li>
									<li><a href="login.jsp"><i
											class="fa fa-sign-out pull-right"></i> Log Out</a></li>
								</ul></li>

							<li role="presentation" class="dropdown"><a
								href="javascript:;" class="dropdown-toggle info-number"
								data-toggle="dropdown" aria-expanded="false"> <i
									class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
							</a>
								<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
									role="menu">
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li>
										<div class="text-center">
											<a> <strong>See All Alerts</strong> <i
												class="fa fa-angle-right"></i>
											</a>
										</div>
									</li>
								</ul></li>
						</ul>

					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col container" role="main">
			<form method="post" action="Prise_en_charge_form">	

				<div class="row row_form col-sm-12 div_border">
					<h2 class="title_pos col-sm-5">Prise en charge</h2>
					<button type="submit" class="btn btn-success btn-xs col-sm-1" id="btn-confirm" name="btn-confirm"
						>Confirmer</button>
					
					<button type="button" class="btn btn-success btn-xs col-sm-1" id="btn-annuler" name="btn-annuler"
						onclick=' window.location= "/Stomise/GestionDevisServ";'>Annuler</button>
				</div>
			
				<div class="row">
				 <div id="wizard_verticle" class="form_wizard wizard_verticle">				
					<div class="col-sm-12 " style="width: 83%">
						<div class="x_panel">
							<div class="row row_form col-sm-12 marg_row">
								<div class="form-group col-sm-4  ">
									<label class="control-label col-sm-6 lab_field" for="idPatient">N°Patient </label>
									<div class="col-sm-6">
										<input type="text" class="form-control rad_input"
											placeholder="" id="idPatient" name="idPatient" value='<c:out value="${patient.idPatient}"></c:out>' >
									</div>
								</div>
								<div class="form-group col-sm-4  ">
									<label class="control-label col-sm-6 lab_field" for="nom">Nom </label>
									<div class="col-sm-6">
										<input type="text" class="form-control rad_input"
											placeholder="" id="nom" name="nom" value='<c:out value="${patient.nom}"></c:out>' >
									</div>
								</div>

								<div class="form-group col-sm-4  ">
									<label class="control-label col-sm-6 lab_field" for="prenom">Prénom
									</label>
									<div class="col-sm-6">
										<input type="text" class="form-control rad_input"
											placeholder="" id="prenom" name="prenom" value='<c:out value="${patient.prenom}"></c:out>' >
									</div>
								</div>


							</div>
							<div class="row row_form col-sm-12 marg_row">
								<div class="form-group col-sm-4  " style="width: 44%">
									<label class="control-label col-sm-6 lab_field" for="adresse">Adresse
									</label>
									<div class="col-sm-6" style="width: 69%; margin-left: -26%">
										<input type="text" class="form-control rad_input" id="adresse" name="adresse"
											placeholder="" value='<c:out value="${patient.adresse}"></c:out>' >
									</div>
								</div>
								<div class="form-group col-sm-4">
									<label class="control-label col-sm-6 lab_field" for="code">Code
										postal </label>
									<div class="col-sm-6">
										<input type="text" class="form-control rad_input" id="code" name="code"
											 value='<c:out value="${patient.codePostal}"></c:out>' placeholder="">
									</div>
								</div>


							</div>
							
							<div class="row row_form col-sm-12 marg_row">
								<div class="form-group col-sm-4  ">
									<label class="control-label col-sm-6 lab_field" for="wilaya">Wilaya </label>
									<div class="col-sm-6">
										<input type="text" class="form-control rad_input"
											placeholder="" id="wilaya" name="wilaya" value='<c:out value="${patient.wilaya}"></c:out>' >
									</div>
								</div>
								<div class="form-group col-sm-4  ">
									<label class="control-label col-sm-6 lab_field" for="commune">Commune </label>
									<div class="col-sm-6">
										<input type="text" class="form-control rad_input"
											placeholder="" id="commune" name="commune" value='<c:out value="${patient.commune}"></c:out>' >
									</div>
								</div>

								<div class="form-group col-sm-4  ">
									<label class="control-label col-sm-6 lab_field" for="email">E-mail
									</label>
									<div class="col-sm-6">
										<input type="text" class="form-control rad_input"
											placeholder="" id="email" name="email" value='<c:out value="${patient.email}"></c:out>' >
									</div>
								</div>


							</div>
							<div class="row row_form col-sm-12 marg_row">
								<div class="form-group col-sm-4  ">
									<label class="control-label col-sm-6 lab_field">Tél
										fixe</label>
									<div class="col-sm-6">
										<input type="text" class="form-control rad_input" id="telFixe" name="telFixe"
											 value='<c:out value="${patient.telfixe}"></c:out>' placeholder="">
									</div>
								</div>
								<div class="form-group col-sm-4  ">
									<label class="control-label col-sm-6 lab_field">Tél
										mobile</label>
									<div class="col-sm-6">
										<input type="text" class="form-control rad_input" id="telMobile" name="telMobile"
											 value='<c:out value="${patient.telmobile}"></c:out>' placeholder="">
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="col-sm-2" style="width: 20%; margin-left: -20%;" >
							
								<div class="row">
									<div class="row x_title" style="width:60%;">
										<div class="" >
											<h2 style="margin-left:10%">
												Type de stomie<small></small>
											</h2>
										</div>
									</div>
									<div class="col-sm-6">
										<input type="text" class="form-control rad_input" id="typeStoma" name="typeStoma"
											placeholder="">
									</div>
									
						</div>
				 </div>
				</div>
				<div class="row row_form col-sm-12 marg_row">
					<div id="wizard_verticle" class="form_wizard wizard_verticle">				
						
						<div class="col-sm-2" style="width: 25%; margin-left: -5%;">
							<div class="x_panel">
								<div class="row">
									<div class="row x_title">
										<div class="">
											<h2>
												Type de la prise en charge<small></small>
											</h2>
										</div>
									</div>
								
									<div class="radio">
										<label> <input type="radio"
											class="flat iradio_flat-green" checked name="securite" id="securite"> 
											Sécurité
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio"
											class="flat iradio_flat-green"  id="organisme" name="organisme">
											Organisme
										</label>
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-2" style="width: 40%;">
							<div class="x_panel">
								<div class="row">
									<!--   <div class="row"><label class="control-label col-sm-6 lab_field">Organisme</label> </div> -->
									<div class="row x_title">
										<div class="">
											<h2>
												Organisme<small></small>
											</h2>
										</div>
									</div>
									<div class="row" style="width: 70%; margin-left: 4%; ">
										<label class="control-label col-sm-2 "
											style="width: 50%; margin-left: -2%;">Nom de
											l'organisme</label>
										<div class="col-sm-6" style="">
											<input type="text" class="form-control rad_input" id="officine" name="officine"
												placeholder="">
										</div>
									
									</div>

									<div class="row"
										style="width: 70%; margin-left: 4%; margin-top: 2%">
										<label class="control-label col-sm-6 lab_field"
											style="width: 48%;">Adresse </label>
										<div class="col-sm-6">
											<input type="text" class="form-control rad_input" id="adrOff" name="adrOff"
												placeholder="">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-2" style="width: 100%; margin-left: 0%;">
					<div class="x_panel" style="width: 83%; margin-top: 0px">
						<div class="row">
							<div class="row x_title">
								<div class="">
									<h2>
										Détails de la prise en charge<small></small>
									</h2>
								</div>
							</div>
							<div class="row" style="margin-bottom: 20px">

								<div class="form-group col-sm-6  "
									style="margin-left: 0%; width: 20%">
									<label class="control-label col-sm-6 lab_field">Pourcentage(%)</label>
									<div class="col-sm-6">
										<input type="text" id="pourcent" name="pourcent" 
											class="form-control rad_input" placeholder="" 
											style="width: 150%; margin-left: 130%">
									</div>
								</div>
							</div>
							<div class="row"
								style="margin-top: 10px; margin-bottom: 10px; width: 150%">
								<div class="form-group col-sm-8  ">
									<label class="control-label col-sm-6 lab_field"
										style="margin-right: 20%">Valide au </label>
									<div class="col-sm-2" style="margin-left: -10%; width: 37%">
										<input type="text" id="dateFin" name="dateFin" 
											class="form-control rad_input" placeholder="" >
									</div>

								</div>

								

								</div>
							</div>
						</div>
					</div>
				</div>

		
				<h3 class="title_pos_produit" style="margin-top: 20%">Liste des
					produits</h3>
				<div class="TABLE_C TABLE_P">
					<table class="table table-striped jambo_table bulk_action">
						<thead>
							<tr class="headings">
								<th><input type="checkbox" id="check-all" class="flat">
								</th>
								<th class="column-title">N°</th>
								<th class="column-title">Référence produit</th>
								<th class="column-title">Désignation</th>
								<th class="column-title">Quantité</th>
								<th class="column-title">PU</th>
								<th class="column-title">Total</th>
								<th class="column-title no-link last"><span class="nobr">Action</span></th>
								<th class="bulk-actions" colspan="7"><a class="antoo"
									style="color: #fff; font-weight: 500;">Bulk Actions ( <span
										class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
								</th>
							</tr>
						</thead>

						 <tbody>
                         <c:forEach items="${produits}" var="produit"> 
                          <tr class="even pointer">
                            <td class=" " ><c:out value="${produit.idProduit}"></c:out></td>
                            <td class=" " ><c:out value="${produit.libelle}"></c:out></td>
                            <td class=" " ><c:out value="${produit.PU}"></c:out></td>
                            <td class=" " ><c:out value="${produit.qte}"></c:out></td>
                            <td class=" " >19 %</td>
							<td class=" " ><c:out value="${produit.qte*produit.PU}"></c:out></td>
							<td class=" " ><c:out value="${produit.qte*produit.PU*1.19}"></c:out></td>				
                            <td class="apercu_c" ><a href="#">Aperçu</a></td>
                          </tr>
                          </c:forEach>
                        </tbody>
					</table>
				</div>


				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 upload_zone">
						<div class="x_panel">
							<div class="x_title">
								<h2>Scanner la prise en charge</h2>
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
								<p></p>
								
								<br /> <br /> <br /> <br />
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
			
			<footer>
				<div class="pull-right"></div>
				<div class="clearfix"></div>
			</footer>
			
		</div>
	</div>

	<!-- jQuery -->
	<script src="mysrc/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="mysrc/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="mysrc/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="mysrc/vendors/nprogress/nprogress.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="mysrc/build/js/custom.min.js"></script>

	<!-- Dropzone.js -->
	<script src="mysrc/vendors/dropzone/dist/min/dropzone.min.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="mysrc/build/js/custom.min.js"></script>
</body>
</html>
