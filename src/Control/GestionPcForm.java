package Control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BDD.Connexion;
import Entites.BL;
import Entites.Devis;
import Entites.Patient;
import Entites.Produit;
import Enumerations.Etat;

/**
 * Servlet implementation class GestionPcForm
 */
@WebServlet("/GestionPcForm")
public class GestionPcForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Produit>produits = new ArrayList<Produit>();
	private HttpSession sess = null;
	private String etat = "";
	private String idDevis = "";
	
       
    
    public GestionPcForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		produits.clear(); 
		Patient patient = null;
		sess=request.getSession();
		idDevis = sess.getAttribute("idDevis").toString();//Utiliser Session
		Devis devis = null;
		Connexion cnx = new Connexion();
		ResultSet resu = cnx.afficherTable("Devis as D join Patient as P on P.idPatient=D.codePatient where idDevis='"+idDevis+"'");
		try {
			while (resu.next()){
				 String nom = resu.getString("nom");
				 String prenom = resu.getString("prenom");
				 String idPatient = resu.getString("idpatient");
				 String telfixe = resu.getString("telmobile");
				 String telmobile = resu.getString("telmobile");
				 String adresse = resu.getString("adresse");
				 String email = resu.getString("email");
				 String wilaya = resu.getString("wilaya");
				 String commune = resu.getString("commune");
				 String codePostal = resu.getString("codepost");
				 Date dateCr = resu.getDate("datedevis");
				 patient =new Patient(idPatient,nom,prenom,email,adresse,wilaya,commune,telfixe,telmobile,codePostal);
				 devis = new Devis(idDevis,dateCr);
				 
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String PC = "PEC"+idDevis.substring(3);
		Date dateCr = (new java.sql.Date(new Timestamp(System.currentTimeMillis()).getTime()));
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

		this.getServletContext().getRequestDispatcher("/1_AgentDesPrestations/Prise_en_charge_form.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String typeStoma = request.getParameter("typeStoma");
		String officine = request.getParameter("officine");
		String adrOff = request.getParameter("adrOff");
		String idPatient = request.getParameter("idPatient");
		String idPc = "PEC"+idDevis.substring(3);
		Float pourcent = Float.valueOf(request.getParameter("pourcent"));
		sess.setAttribute("pourcent", pourcent);
		
		Date dateFin = null;

			dateFin = Date.valueOf(request.getParameter("dateFin"));

		
		Connexion cnx = new Connexion();
		Connection cnct = cnx.loadDB();
		try {
			PreparedStatement pst = cnct.prepareStatement(" insert into PriseCharge values (?,?,?,?,?,?,?,?,?);");
			
			pst.setString(1, idPc);
			pst.setFloat(2, pourcent);
			pst.setString(3, officine);
			pst.setString(4, adrOff);
			pst.setString(5, idPatient);
			pst.setDate(6, dateFin);
			pst.setString(7, idDevis);
			pst.setString(8, idPc);
			pst.setString(9, typeStoma);
			
			pst.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		// il faut rediriger vers la liste
		//request.getRequestDispatcher("GestionPcForm").forward(request, response);
		
	}

}
