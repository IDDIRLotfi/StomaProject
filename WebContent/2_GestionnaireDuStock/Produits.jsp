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

<title>StomIT | Mouvement Sortie</title>

<!-- Bootstrap -->
<link href="mysrc/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="mysrc/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="mysrc/vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- custom stomatis?� -->
<link href="mysrc/build/css/custom_stom.css" rel="stylesheet">
<!-- Custom Theme Style -->
<link href="mysrc/build/css/custom.min.css" rel="stylesheet">
</head>

 <!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document" style="width: 50%">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Détails produit</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <div class="row">
				 <div id="wizard_verticle" class="form_wizard wizard_verticle">	
        <div class="" style="width:20%;heigh:20%;">
				<img src="images/ss.jpg" alt="..." class="img-circle profile_img" ">
		</div>
				
		<div class="col-md-6" style="width:60%;" >
		<h2>Description</h2>
		 <p >
		 La poche SenSura Mio 1 pièce fermée est fixée de façon permanente au protecteur cutané extensible.
		  Pour changer la poche, il faut alors retirer et remplacer l’appareillage. Elles sont composées de 
		  protecteurs cutanés pré-découpés ou à découper au diamètre de votre stomie
		 </p>
		</div>
		</div>
		</div>

      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
       
      </div>
    </div>
  </div>
</div>


<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title"
						style="border: 0; background: #023232">
						<a href="index.jsp" class="site_title"> <img
							src="images/Sans titre-1.png" style="height: 50px" alt="..."><span>
								Stomise</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="${sessionScope.utilisateur.urlphoto}" alt="..." class="img-circle profile_img">
						</div>
						
						<c:if test="${!empty sessionScope.urilisateur.username}">         
              				<div class="profile_info">
                		  	 <span>Bienvenue,</span>
                          		 <h2 id="nomAgent" name="nomAgent">${sessionScope.utilisateur.nom}</h2>	
			             	</div>
			            </c:if>
					
						<div class="clearfix">
							<h4 id="roleAgent" name="roleAgent">Role: ${sessionScope.utilisateur.fonction}</h4>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a href="/Stomise/ListeProduits"><i class="fa fa-home"></i>Produits</a></li>
								<li><a href="Mouvement_Sortie.jsp"><i
										class="fa fa-home"></i>Bons Sortie</a></li>
								<li><a href="Mouvement_Entree.jsp"><i
										class="fa fa-home"></i>Bons d'Entree</a></li>
								<li><a href="Mouvement_Fich_Stock.jsp"><i
										class="fa fa-home"></i>Fiche du Stock</a></li>

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

							<li class=""><a href="javascript:;"	class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> <img src="${sessionScope.utilisateur.urlphoto}" 
							alt="">${sessionScope.utilisateur.nom}<span class=" fa fa-angle-down"></span>
							</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="/Stomise/Login"><i	class="fa fa-sign-out pull-right"></i> Déconnexion</a></li>
								</ul></li>
								
								

							<li role="presentation" class="dropdown"><a
								href="javascript:;" class="dropdown-toggle info-number"
								data-toggle="dropdown" aria-expanded="false"> <i
									class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
							</a>
								<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
									role="menu">

								</ul>
							</li>
						</ul>
					</nav>
				</div>
			</div>


		<!-- /top navigation -->
		<!-- page content -->
		<div class="right_col" role="main">
			<div class="">


				<div class="row row_form col-sm-12 div_border stock_view"></div>
				<button type="button" class="btn btn-success btn-xs col-sm-1" style ="float:right;"  id="" name="" ;'>Nouveau</button>
				<h3 class="title_pos_produit" style="margin-top: -23px;">Liste
					des produits</h3>
				
				<div class="clearfix"></div>
				<div class="TABLE_C" style="margin-top: 23px;">

					<table class="table table-striped jambo_table bulk_action">
						<thead>
							<tr class="headings">
								<th class="column-title">N°</th>
								<th class="column-title">Réfference</th>
								<th class="column-title">Designation</th>
								<th class="column-title">Marque</th>
								<th class="column-title">Contenance</th>
								<th class="column-title">P.Unitaire</th>
								<th class="column-title">Aperçu</th>
							</tr>
						</thead>
						<c:forEach items="${produits}" var="produit"  varStatus = "status">

							<tr class="even pointer">

								<td class=" " id="" name=""><c:out value="${status.index+1}"></c:out></td>
								<td class=" " id="" name=""><c:out value="${produit.idProduit}"></c:out></td>
								<td class=" " id="" name=""><c:out value="${produit.libelle}"></c:out></td>
								<td class=" " id="" name=""><c:out value="${produit.marque}"></c:out></td>
								<td class=" " id="" name=""><c:out value="${produit.qteStock}"></c:out></td>
								<td class=" " id="" name=""><c:out value="${produit.PU}"></c:out></td>							
							    <td class="apercu_c" id="" name=""><a href="#" data-toggle="modal" data-target="#exampleModalLong">View</a></td>
							</tr>
						</c:forEach>

						</tbody>
					</table>
				</div>

				<div class="clearfix"></div>

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
	<script src="mysrc/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="mysrc/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="mysrc/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="mysrc/vendors/nprogress/nprogress.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="mysrc/build/js/custom.min.js"></script>
	<style>
#test {
	margin-right: -204px;
	margin-left: -10px;
	margin-top: 6px;
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
	<link href="mysrc/build/css/custom_stom_2.css" rel="stylesheet">
	<!-- Custom Theme Style -->
	<link href="mysrc/build/css/custom.min_2.css" rel="stylesheet">

</body>
</html>
