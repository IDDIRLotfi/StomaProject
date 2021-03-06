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
                <h2>Hafidh</h2>	
              </div>
              <div class="clearfix">
				<h4>Role: Agent des prestations</h4>
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
				
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/img.jpg" alt="">Hafidh
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
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
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
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
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
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
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
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
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
			 
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
 <form method="post" action="gestion_devis_form">
        <!-- page content -->
        <div class="right_col container" role="main">
       
			<div class="row row_form col-sm-12 div_border">
			   
                        <label class="control-label col-sm-4 " style="width: 18%;" >Liste des malades examinés</label>
                       
                        <div class="col-sm-6">
                          <select class="select2_single form-control colcol-sm-12 " name ="patientSelect" style="width: 70%;margin-bottom: 10px" tabindex="-1" >
                            <option value ="test"></option>
                            <c:forEach items="${patients}" var="patient"> 
                            <option value='<c:out value="${patient.idPatient}"> </c:out>'><c:out value="${patient.nom} "> </c:out><c:out value="${patient.prenom}"> </c:out></option>
                            
                            </c:forEach>
                          </select>
                        </div>
                        <input type="submit" class="btn btn-success btn-xs col-sm-1" style="" name="btn" value ="Generer" style="width: 20%;margin-left: -20px" />
         				
      </div>
     
			<div class="row row_form col-sm-12 div_border">
				 <h2 class="title_pos col-sm-5">Détails du devis (<label><c:out value="${etat}"></c:out></label>)</h2>
				 <input type="button" class="btn btn-success btn-xs col-sm-1" name="btn" href="#" data-toggle="modal" data-target="#exampleModalLong" value ="Confirmer"/>
				 <input type="submit" class="btn btn-success btn-xs col-sm-1" name="btn" value ="Enregistrer"/>
				  <input type="submit" class="btn btn-success btn-xs col-sm-1" name="btn" value ="Imprimer"/>
				<!--   <button type="button" class="btn btn-success btn-xs col-sm-1"  onclick =' window.location= "gestion_devis.jsp";'>Annuler</button>-->
			</div>
			<div class="row row_form col-sm-12 marg_row">
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field">N° Devis </label>
							<div class="col-sm-6">
							  <input type="text" id="idDevis" name = "idDevis" value='<c:out value="${idDevis}"></c:out>' class="form-control rad_input" placeholder="" readonly="readonly">
							</div>
			  </div>
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field">Date </label>
							<div class="col-sm-6">
							  <input type="text" id="dateCr" name = "dateCr"  value='<c:out value="${dateCr}"></c:out>'class="form-control rad_input" placeholder="" readonly="readonly" >
							</div>
			  </div>
			  
			  
			</div>
			<div class="row row_form col-sm-12 marg_row">
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field">N° Ordonnance </label>
							<div class="col-sm-6">
							  <input type="text" id="codeOrd" name = "codeOrd" value='<c:out value="${codeOrd}"></c:out>'class="form-control rad_input" placeholder="" readonly="readonly">
							</div>
			  </div>
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field">Date limite </label>
							<div class="col-sm-6">
							  <input type="text" class="form-control rad_input" name="dateFin" value='<c:out value="${datefin}"></c:out>' placeholder="" readonly="readonly">
							</div>
			  </div>
			  
			  
			</div>
			<div class="row row_form col-sm-12 marg_row">
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field">N° Medecin </label>
							<div class="col-sm-6">
							  <input type="text" id="idMedecin" name = "idMedecin" value='<c:out value="${codeMedecin}"></c:out>' class="form-control rad_input" placeholder="" readonly="readonly">
							</div>
			  </div>
			  <div class="form-group col-sm-4  ">
							<label class="control-label col-sm-6 lab_field">Nom medecin</label>
							<div class="col-sm-6">
							  <input type="text" name ="nomMedecin" value='<c:out value="${nomMedecin}"></c:out>' class="form-control rad_input" placeholder="" readonly="readonly">
							</div>
			  </div>	  
        <div class="form-group col-sm-4  ">
              <label class="control-label col-sm-6 lab_field">Prénom medecin </label>
              <div class="col-sm-6">
                <input type="text" name="prenomMedecin" value='<c:out value="${prenomMedecin}"></c:out>' class="form-control rad_input" placeholder="" readonly="readonly">
              </div>
        </div>
			</div>

      <div class="row row_form col-sm-12 marg_row">
        <div class="form-group col-sm-4  ">
              <label class="control-label col-sm-6 lab_field">NIN </label>
              <div class="col-sm-6">
                <input type="text" id="idPatient" name = "idPatient" class="form-control rad_input" placeholder="" readonly="readonly" value='<c:out value="${patientDevis.idPatient}"></c:out>'>
              </div>
        </div>
        <div class="form-group col-sm-4  ">
              <label class="control-label col-sm-6 lab_field">Nom patient</label>
              <div class="col-sm-6">
                <input type="text" name="nomPatient" value='<c:out value="${patientDevis.nom}"></c:out>' class="form-control rad_input" placeholder="" readonly="readonly">
              </div>
        </div>   
        <div class="form-group col-sm-4  ">
              <label class="control-label col-sm-6 lab_field">Prénom patient </label>
              <div class="col-sm-6">
                <input type="text" name="prenomPatient" value='<c:out value="${patientDevis.prenom}"></c:out>' class="form-control rad_input" placeholder="" readonly="readonly">
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
								<label class="control-label lab_field">Montant</label>
								<div class="">
								  <input type="text" class="form-control rad_input" id="montant" name ="montant" value='<c:out value="${montant}"></c:out>' readonly="readonly" placeholder="">
								</div>
				  </div>			  
				
			</div>
        </div>
			
        </div>
        <!-- /page content -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true" >
  <div class="modal-dialog"  role="document" style="width: 30%">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLongTitle">Confirmer le devis avec :</h4>
		
		
				 
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	 
				
				 
				  <div class="row row_form col-sm-16 marg_row" style="margin-top:40px;margin-bottom:30px">
				   
		 <button type="submit" class="btn btn-secondary col-sm-3" value="BLF"  name="popup" style="float:left;margin-left:15%">Paiement</button>
		
		<button type="submit" class="btn btn-secondary col-sm-3"  value="PC" name="popup"style="float:right;margin-right:15%">PEC</button>
		</div>
         
				
            <div class="clearfix"></div>
   
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
 </form>
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
