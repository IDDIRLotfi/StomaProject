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
    <link href="mysrc/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="mysrc/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="mysrc/vendors/nprogress/nprogress.css" rel="stylesheet">
     <!-- custom stomatisé -->
	 <link href="mysrc/build/css/custom_stom.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="mysrc/build/css/custom.min.css" rel="stylesheet">
	
	<link href="mysrc/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;background:#023232">
              <a href="index.html" class="site_title"> <img src="images/Sans titre-1.png" style="height:50px" alt="..."><span>  Stomisé</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Bienvenue,</span>
                <h2 id="nomAgent" >Hafidh</h2>	
              </div>
              <div class="clearfix">
				<h4 id="roleAgent"  >Role: Agent des prestations</h4>
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
								<li><a href="accueil.jsp"><i class="fa fa-home"></i>
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

              <ul class="nav navbar-nav navbar-right"></ul>
			  
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <form method="post" action="gestion_facture_form">
        <div class="right_col container" role="main">
		
		
			<div class="row row_form col-sm-12 div_border">
				 <h2 class="title_pos col-sm-6">Détails de la facture (<label><c:out value="${facture.etat}"></c:out></label>)</h2>
				 <button type="submit" class="btn btn-success btn-xs col-sm-1" id="btn" name = "btn" value="Imprimer" onclick =''>Imprimer</button>
				 <button type="submit" class="btn btn-success btn-xs col-sm-1" id="btn" name = "btn" value="Enregistrer" onclick =''>Enregistrer</button>
				 <button type="button" class="btn btn-success btn-xs col-sm-1" id="btn" name = "btn" value="Annuler" onclick =' window.location= "gestion_facture.jsp";'>Annuler</button>
			</div>
			
			<div class="row row_form col-sm-12 marg_row">
			  <div class="form-group col-sm-6  ">
							<label class="control-label col-sm-2 lab_field" for="idFacture">N°Facture</label>
							<div class="col-sm-10" >
							  <input type="text" class="form-control rad_input" style="margin-left : 5px " id="idFacture" name = "idFacture" value='<c:out value="${facture.idFacture}"></c:out>'readonly="readonly" placeholder="">
							</div>
			  </div>
			  
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-2 lab_field" for="officine">Officine </label>
							<div class="col-sm-10">
							  <input type="text" class="form-control rad_input" id="officine" style="margin-left : 5px " name ="officine" value='<c:out value="${facture.officine}"></c:out>' readonly="readonly">
							</div>
			  </div>
			  
			  <div class="form-group col-sm-3  ">
							<label class="control-label col-sm-3 lab_field" for="dateFacture">Date</label>
							<div class="col-sm-9">
							  <input type="text" class="form-control rad_input" style="margin-right : -5px " id="dateFacture" name = "dateFacture" value='<c:out value="${facture.dateFacture}"></c:out>'readonly="readonly" placeholder="">
							</div>
			  </div>
			  
			</div>
		
			<div class="row row_form col-sm-12 marg_row">
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-2 lab_field" for="idPatient">N° Patient </label>
							<div class="col-sm-10">
							  <input type="text" class="form-control rad_input" style="margin-left : 5px " id="idPatient" name="idPatient" value='<c:out value="${patient.idPatient}"></c:out>'readonly="readonly" placeholder="">
							</div>
			  </div>
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-2 lab_field" for="nom">Nom </label>
							<div class="col-sm-10">
							  <input type="text"  class="form-control rad_input" style="margin-left : 5px" id="nom" name="nom" placeholder="" value='<c:out value="${patient.nom}"></c:out>'readonly="readonly">
							</div>
			  </div>

			<div class="form-group col-sm-4  ">
              <label class="control-label col-sm-3 lab_field" for="prenom">Prenom </label>
              <div class="col-sm-9">
                <input type="text" class="form-control rad_input" id="prenom" name="prenom" value='<c:out value="${patient.prenom}"></c:out>'readonly="readonly">
              </div>
			</div>
			  
			  
			</div>
			<div class="row row_form col-sm-12 marg_row">
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field"></label>
							<div class="col-sm-6">							 
							</div>
			  </div>
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-2 lab_field" for="idBL">Réf.BL  </label>
							<div class="col-sm-10">
							  <input type="text" class="form-control rad_input" id="idBL" style="margin-left : 5px " name ="idBL" value='<c:out value="${bl.idBL}"></c:out>' readonly="readonly">
							</div>
			  </div>
			  
			  
			</div>
		
		<h3 class="title_pos_produit">Liste des produits </h3>
			<div class="TABLE_C TABLE_P">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                           
							<th class="column-title">Référence produit </th>
                            <th class="column-title">Désignation </th>
                            <th class="column-title">PU </th>
                            <th class="column-title">Quantité </th>
                            <th class="column-title">%TVA </th>
                            <th class="column-title">HT </th>
							<th class="column-title">TTC </th>
                            <th class="column-title no-link last"><span class="nobr">Action</span></th>
                            <th class="bulk-actions" colspan="7">
                              <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
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

			<div class="case_montant" style="margin-top:100px">
				<div class="row row_form  marg_col" >
				  <div class="form-group   ">
								<label class="control-label lab_field">Montant à payer</label>
								<div class="">
								  <input type="text" class="form-control rad_input" id="" name = "montantFacture" value='<c:out value="${facture.montantTotal}"></c:out>' placeholder="Default Input">
								</div>
				  </div>			  
				
			</div>
        </div>
        </div>
        </form>
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
