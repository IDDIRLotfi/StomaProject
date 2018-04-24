package Control;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BDD.Connexion;
import Entites.BL;
import Entites.BLF;
import Entites.Devis;
import Entites.Facture;
import Entites.FrenchNumberToWords;
import Entites.Patient;
import Entites.Produit;
import Enumerations.Etat;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.engine.xml.JRXmlLoader;



@WebServlet("/GestionDevisForm")
public class GestionDevisForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession sess = null;
	private List<Produit>produits = new ArrayList<Produit>();
  
    public GestionDevisForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		sess = request.getSession();
		Connexion cnx = new Connexion();
		ResultSet resu = cnx.afficherTable("Patient");
		List<Patient> patients =new ArrayList<Patient>();
		 try {
			while (resu.next()){
				 String nom = resu.getString("nom");
				 String prenom = resu.getString("prenom");
				 String idPatient = resu.getString("idpatient");
				 Patient patient =new Patient(idPatient,nom,prenom);
				 patients.add(patient);
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 request.setAttribute("patients", patients);
		 this.getServletContext().getRequestDispatcher("/1_AgentDesPrestations/gestion_devis_form.jsp").forward(request, response);
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String btn="";
		btn= request.getParameter("btn");
		String etat= request.getParameter("etat");
		if (btn!=null)
		{
		if(btn.equals("Imprimer"))
		{
			try {
				generateReportDevis(request);
			} catch (JRException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			sess.setAttribute("type", "Devis");
			response.sendRedirect("/Stomise/Download");
		}
		else{
		
		if(btn.equals("Enregistrer")){
			
		String idPatient = request.getParameter("idPatient");
		String idMedecin = request.getParameter("idMedecin");
		String codeOrd = request.getParameter("codeOrd");
		Date dateCr = null;

			dateCr = Date.valueOf(request.getParameter("dateCr"));
		
		String idDevis = request.getParameter("idDevis");
		sess.setAttribute("idDevis", idDevis);
		Connexion cnx = new Connexion();
		Connection cnct = cnx.loadDB();
		try {
			PreparedStatement pst = cnct.prepareStatement(" insert into Devis values (?,?,?,?,?,?,?,?);");
			
			pst.setString(1, idDevis);
			pst.setString(2, codeOrd);
			pst.setString(3, idMedecin);
			pst.setString(4, idPatient);
			pst.setDate(5, dateCr);
			pst.setString(6, "Créé");
			pst.setFloat(7,calculerMontant());
			pst.setString(8, idDevis);
			
			pst.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		}
		if(btn.equals("Generer")){
			 produits.clear(); 
			Connexion cnx = new Connexion();
			String idDevis="";
			String codeOrd="";
			ResultSet resu = cnx.afficherTable("Patient where idPatient = '"+request.getParameter("patientSelect")+"'");
			
			 try {
				 while (resu.next()){
					 String nom = resu.getString("nom");
					 String prenom = resu.getString("prenom");
					 String idPatient = resu.getString("idPatient");
					 Patient patient =new Patient(idPatient,nom,prenom);
					 request.setAttribute("patientDevis", patient);
				 }
				 }
			 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}
			resu = cnx.afficherTable("Prescription as P join Utilisateur as U on P.codemedecin=U.id where codePatient =  '"+request.getParameter("patientSelect")+"'");
			
				 try {
					 while (resu.next()){
						 String codeMedecin = resu.getString("id");
						idDevis = "Dev"+resu.getString("idPresc").substring(3);// ici normalement c'est la génération d'un id devis
						 String nomMedecin = resu.getString("nom");
						 String prenomMedecin = resu.getString("prenom");
						 codeOrd = resu.getString("idPresc");
						 String dateCr = (new java.sql.Date(new Timestamp(System.currentTimeMillis()).getTime())).toString();
						 String datefin=(new java.sql.Date(new Timestamp(System.currentTimeMillis()+60*60*24*1000*21).getTime())).toString();
						 request.setAttribute("idDevis", idDevis);
						 request.setAttribute("nomMedecin", nomMedecin);
						 request.setAttribute("prenomMedecin", prenomMedecin);
						 request.setAttribute("codeOrd", codeOrd);
						 request.setAttribute("dateCr", dateCr);
						 request.setAttribute("datefin", datefin);
						 request.setAttribute("codeMedecin", codeMedecin);
						 
					 }
					 }
				 catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				 sess=request.getSession();
				 sess.setAttribute("idDevis", idDevis);
			
				 resu = cnx.afficherTable("Prescription as P join ProdPresc as Pd on P.idPresc=Pd.idPresc join Produit as Pr on Pr.idprod= Pd.codeprod where P.idPresc ='"+codeOrd+"'");
					float montant =0;
				 try {
					 while (resu.next()){
						 
						 String codeProd = resu.getString("codeProd");
						 int QteReserv = resu.getInt("qte");
						float PU = resu.getFloat("pu");
						montant+=QteReserv*PU;
						 String libelle= resu.getString("libelle");
						 Produit prod = new Produit(codeProd,libelle,QteReserv,PU);
						 produits.add(prod);
					 }
					 }
				 catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
				}
				 
				 request.setAttribute("montant", montant*1.19);
				 request.setAttribute("produits", produits);
				 resu = cnx.afficherTable("Devis where idDevis ='"+idDevis+"'");
				 etat = "non enregistre";
				 
				 try {
					 while (resu.next()){
						etat = resu.getString("etat");
					 }
					 }
				 catch (SQLException e) {
					etat = "non enregistrée";
				}
				 request.setAttribute("etat", etat);		 
		}
		
		Connexion cnx = new Connexion();
		ResultSet resu = cnx.afficherTable("Patient");
		List<Patient> patients =new ArrayList<Patient>();
		 try {
			while (resu.next()){
				 String nom = resu.getString("nom");
				 String prenom = resu.getString("prenom");
				 String idPatient = resu.getString("idpatient");
				 Patient patient =new Patient(idPatient,nom,prenom);
				 patients.add(patient);
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 request.setAttribute("patients", patients);
		 
	
		this.getServletContext().getRequestDispatcher("/1_AgentDesPrestations/gestion_devis_form.jsp").forward(request, response);
		}
		}
		String popup=request.getParameter("popup");
		 if (popup !=null)
		 {
			 if(popup.equals("BLF"))
			 {
				 response.sendRedirect("/Stomise/GestionBlfForm");
			 }
			 if(popup.equals("PC"))
			 {
				 response.sendRedirect("/Stomise/GestionPcForm");
			 }
		 }
		 
	}
	
	public float calculerMontant(){
		float total =0;
		for(Produit prod : produits )
		{
			total+=prod.getPU()*prod.getQte();
		}
		return total;
				
	}
	
	public void generateReportDevis(HttpServletRequest request) throws JRException, IOException{
        
        
		 try {
				// - Chargement et compilation du rapport
		        JasperDesign jasperDesign = JRXmlLoader.load(this.getServletContext().getRealPath("/WEB-INF/Jasper/Devis.jrxml"));
		        JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);

		        // - Paramètres à envoyer au rapport
		        Map parameters = new HashMap();
		        
		        parameters.put("produits", new JRBeanCollectionDataSource(produits));
		        System.out.println(produits.toString());
		        parameters.put("logo", this.getServletContext().getRealPath("images\\img.png"));
		        
				Date dateCr = null;

					dateCr = Date.valueOf(request.getParameter("dateCr"));
				
				String idDevis = request.getParameter("idDevis");
		        parameters.put("idPatient", request.getParameter("idPatient"));
		        parameters.put("codeOrdonance", request.getParameter("codeOrd"));
		        parameters.put("nomPatient", request.getParameter("nomPatient"));
		        parameters.put("prenomPatient", request.getParameter("prenomPatient"));
		        parameters.put("montant", request.getParameter("montant"));
		        System.out.println(request.getParameter("montant"));
		        FrenchNumberToWords Fr = new FrenchNumberToWords();
		        parameters.put("montantLettre", Fr.convert((Float.valueOf(request.getParameter("montant")).longValue())));
		        parameters.put("numMedecin", request.getParameter("idMedecin"));
		        parameters.put("nomMedecin", request.getParameter("nomMedecin"));
		        parameters.put("devis", new Devis(idDevis,dateCr));
		        parameters.put("prenomMedecin", request.getParameter("prenomMedecin"));
		        parameters.put("dateFin", request.getParameter("dateFin"));
		       
		        
		        // - Execution du rapport
		        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, new JREmptyDataSource());

		        // - Création du rapport au format PDF
		        JasperExportManager.exportReportToPdfFile(jasperPrint, "C:\\Devis.pdf");// à changer
		        
		        
		    } catch (JRException e) {

		        e.printStackTrace();}
		    }        
     
     
}
	
	
     



