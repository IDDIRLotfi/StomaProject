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
 * Servlet implementation class GestionFactureForm
 */
@WebServlet("/GestionFactureForm")
public class GestionFactureForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Produit>produits = new ArrayList<Produit>();
	private String etat = "";
	private Facture facture = null;
	private HttpSession sess = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GestionFactureForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		produits.clear(); 
		Patient patient = null;
		String idBl = "BL-019930581075111007-01";//Utiliser Session
		BL bl = null;
		Connexion cnx = new Connexion();
		ResultSet resu = cnx.afficherTable("BL as B join Patient as P on P.idPatient=B.codePatient where idBl='"+idBl+"'");
		try {
			while (resu.next()){
				 String nom = resu.getString("nom");
				 String prenom = resu.getString("prenom");
				 String idPatient = resu.getString("idpatient");
				 Date dateCr = resu.getDate("datebl");
				 patient =new Patient(idPatient,nom,prenom);
				 bl = new BL(idBl,patient,dateCr,Etat.NonCréé);
				 
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String idFacture = "Facture"+idBl.substring(2);
		Date dateCr = (new java.sql.Date(new Timestamp(System.currentTimeMillis()).getTime()));
		
	
		
		 resu = cnx.afficherTable("Bl as B join Devis as D on D.idDevis=B.refdevis join ProdDevis as Pd on D.idDevis=Pd.idDevis join Produit as Pr on Pr.idprod= Pd.codeprod where B.idBl ='"+idBl+"'");
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
			
		
	facture= new Facture(idFacture,(float)(montant*1.19),(float)0.8,"CNAAS",bl,dateCr);
	facture.setEtat(Etat.NonCréé);
		 request.setAttribute("produits", produits);
		 request.setAttribute("bl", bl);
		 request.setAttribute("patient", patient);
		 request.setAttribute("facture", facture);
		 this.getServletContext().getRequestDispatcher("/1_AgentDesPrestations/gestion_facture_form.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String btn = request.getParameter("btn");
		if(btn.equals("Imprimer"))
		{
			try {
				generateReportDevis(request);
			} catch (JRException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			sess = request.getSession();
			sess.setAttribute("type", "Facture");
			response.sendRedirect("/Stomise/Download");
		}
		else{
		if(btn.equals("Enregistrer")){
			String idPatient = request.getParameter("idPatient");
			String officine = request.getParameter("officine");
			String idBl= request.getParameter("idBL");
			Float montant = Float.valueOf(request.getParameter("montantFacture"));
			Date dateFacture = null;

			dateFacture = Date.valueOf(request.getParameter("dateFacture"));
			
			String idFacture = request.getParameter("idFacture");
			
			Connexion cnx = new Connexion();
			Connection cnct = cnx.loadDB();
			try {
				PreparedStatement pst = cnct.prepareStatement(" insert into Facture values (?,?,?,?,?,?,?,?,?);");
				pst.setString(1, idFacture);
				pst.setString(2, ("Créé"));
				pst.setDouble(3, montant);
				pst.setDouble(4, 0.8);
				pst.setString(5, officine);
				pst.setDate(9, dateFacture);
				pst.setString(6, idPatient);
				pst.setString(7,idBl);
				pst.setString(8, "Dev-019930581075111007-01");
				pst.executeUpdate();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			}
		this.getServletContext().getRequestDispatcher("/1_AgentDesPrestations/gestion_facture_form.jsp").forward(request, response);
		}
	}
	public void generateReportDevis(HttpServletRequest request) throws JRException, IOException{
        
        
		 try {
				// - Chargement et compilation du rapport
		        JasperDesign jasperDesign = JRXmlLoader.load(this.getServletContext().getRealPath("/WEB-INF/Jasper/Facture.jrxml"));
		        JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
		        Date dateCr = null;

				dateCr = Date.valueOf(request.getParameter("dateFacture"));
		        // - Paramètres à envoyer au rapport
		        Map parameters = new HashMap(); 
		        parameters.put("produits", new JRBeanCollectionDataSource(produits));
		        parameters.put("logo", this.getServletContext().getRealPath("images\\img.png"));
		        parameters.put("idPatient", request.getParameter("idPatient"));
		        parameters.put("idBl", request.getParameter("idBL"));
		        parameters.put("nomPatient", request.getParameter("nom"));
		        parameters.put("prenomPatient", request.getParameter("prenom"));
		        parameters.put("montant", request.getParameter("montantFacture"));
		        FrenchNumberToWords Fr = new FrenchNumberToWords();
		        parameters.put("montantLettre", Fr.convert((Float.valueOf(request.getParameter("montantFacture")).longValue())));
		        
		        
		        
		        // cas Facture
		         
		       
		        parameters.put("fact", new Facture(request.getParameter("idFacture"),dateCr));
		        
		      
		       
		        
		        // - Execution du rapport
		        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, new JREmptyDataSource());

		        // - Création du rapport au format PDF
		        JasperExportManager.exportReportToPdfFile(jasperPrint, "C:\\Facture.pdf");// à changer
		        
		        
		    } catch (JRException e) {

		        e.printStackTrace();}
		    }        

}
