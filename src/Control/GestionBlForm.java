package Control;

import java.io.IOException;
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

import javax.servlet.ServletException;
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
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 * Servlet implementation class GestionBlForm
 */
@WebServlet("/GestionBlForm")
public class GestionBlForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Produit>produits = new ArrayList<Produit>();
	private String etat = "";
	private BL bl = null;
	private HttpSession sess = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GestionBlForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		produits.clear(); 
		Patient patient = null;
		sess=request.getSession();
		String idDevis = sess.getAttribute("idDevis").toString();//Utiliser Session
		Devis devis = null;
		Connexion cnx = new Connexion();
		ResultSet resu = cnx.afficherTable("Devis as D join Patient as P on P.idPatient=D.codePatient where idDevis='"+idDevis+"'");
		try {
			while (resu.next()){
				 String nom = resu.getString("nom");
				 String prenom = resu.getString("prenom");
				 String idPatient = resu.getString("idpatient");
				 Date dateCr = resu.getDate("datedevis");
				 patient =new Patient(idPatient,nom,prenom);
				 devis = new Devis(idDevis,dateCr);
				 
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String idBl = "BL"+idDevis.substring(3);
		Date dateCr = (new java.sql.Date(new Timestamp(System.currentTimeMillis()).getTime()));
		
		
		bl= new BL(idBl,devis,patient,dateCr,Etat.NonCréé);
		
		 resu = cnx.afficherTable("Devis as D join ProdDevis as Pd on D.idDevis=Pd.idDevis join Produit as Pr on Pr.idprod= Pd.codeprod where D.idDevis ='"+idDevis+"'");
			float montant =0;
		 try {
			 while (resu.next()){
				 
				 String codeProd = resu.getString("codeProd");
				 int QteReserv = resu.getInt("qte");
				float PU = resu.getFloat("pu");
				 String libelle= resu.getString("libelle");
				 Produit prod = new Produit(codeProd,libelle,QteReserv,PU);
				 produits.add(prod);
				 montant+=  QteReserv*PU;
			 }
			 }
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		 devis.setMontant((float)(montant*1.19));
		 
		 request.setAttribute("produits", produits);
		 request.setAttribute("devis", devis);
		 request.setAttribute("patient", patient);
		 request.setAttribute("bl", bl);
		
		this.getServletContext().getRequestDispatcher("/1_AgentDesPrestations/gestion_bl_form.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String btn= request.getParameter("btn");
		etat= request.getParameter("etat");
		if(btn.equals("Imprimer"))
		{
			try {
				generateReportDevis(request);
			} catch (JRException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			sess=request.getSession();
			sess.setAttribute("type", "BL");
			response.sendRedirect("/Stomise/Download");
		}
		else
		{
		if(btn.equals("Enregistrer")){
			
		String idPatient = request.getParameter("idPatient");
		String idBl = request.getParameter("idBl");
		Date dateCr = null;

			dateCr = Date.valueOf(request.getParameter("dateCr"));
		
		String idDevis = request.getParameter("idDevis");
		
		Connexion cnx = new Connexion();
		Connection cnct = cnx.loadDB();
		try {
			PreparedStatement pst = cnct.prepareStatement(" insert into BL values (?,?,?,?,?,?);");
			
			pst.setString(1, idBl);
			pst.setString(2, idDevis);
			pst.setString(3, idPatient);
			pst.setString(4, idBl);
			pst.setDate(5, dateCr);
			pst.setString(6, "Créé");
			
			pst.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		request.getRequestDispatcher("GestionBL").forward(request, response);
		}
		
		
		}
		
	}
	public void generateReportDevis(HttpServletRequest request) throws JRException, IOException{
        
        
		 try {
				// - Chargement et compilation du rapport
		        JasperDesign jasperDesign = JRXmlLoader.load(this.getServletContext().getRealPath("/WEB-INF/Jasper/BL.jrxml"));
		        JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);

		        // - Paramètres à envoyer au rapport
		        Map parameters = new HashMap();
		        
		        parameters.put("produits", new JRBeanCollectionDataSource(produits));
		        parameters.put("logo", this.getServletContext().getRealPath("images\\img.png"));
		        Date dateCr = null;

				dateCr = Date.valueOf(request.getParameter("dateCr"));
			

				parameters.put("idDevis",request.getParameter("idDevis"));
		        parameters.put("idPatient", request.getParameter("idPatient"));
		        parameters.put("codeOrdonance", request.getParameter("codeOrd"));
		        parameters.put("nomPatient", request.getParameter("Nom_patient"));
		        parameters.put("prenomPatient", request.getParameter("Pren_patient"));
		        parameters.put("bl", new BL(request.getParameter("idBl"),dateCr));
		        
		        
		 
		        
		        
		      
		        
		        
		     
		        
		        // - Execution du rapport
		        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, new JREmptyDataSource());

		        // - Création du rapport au format PDF
		        JasperExportManager.exportReportToPdfFile(jasperPrint, "C:\\BL.pdf");// à changer
		        
		        
		    } catch (JRException e) {

		        e.printStackTrace();}
		    }        

}
