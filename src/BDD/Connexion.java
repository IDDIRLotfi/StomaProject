package BDD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;
import java.util.Map;

import Entites.Utilisateur;
import Enumerations.Fonction;
import Enumerations.Officine;
import Entites.BL;
import Entites.BLF;
import Entites.Devis;
import Entites.Facture;
import Entites.Patient;
import Entites.PriseCharge;
import Entites.Produit;
public class Connexion {
	 private Connection connex;
	 
	 public List<Devis> loadDevis() {

		 List<Devis> listeDevis =new ArrayList<Devis>();
		 
		 Statement statement = null;
		 ResultSet resu = null;
		 Patient patient = null;
		 
		     loadDB();
		     
			 try {
				statement=connex.createStatement();
				 resu = statement.executeQuery("Select * from public.devis");
				 
				 while (resu.next()){
					 String idDevis  = resu.getString(1),
					        codeOrd  = resu.getString(2),
					        codeMed  = resu.getString(3),
					        codePat  = resu.getString(4);
					  Date  dateDev  = resu.getDate(5);
					  String   etat  = resu.getString(6),
					         refDoc  = resu.getString(8);
					 Double montant  = resu.getDouble(7);
					 
					 PreparedStatement resuDetails = connex.prepareStatement("Select * from public.patient where idpatient= ? ");
					 resuDetails.setString(1, codePat);
					 ResultSet rs = resuDetails.executeQuery();
					 while(rs.next())
					 patient = new Patient(codePat, rs.getString(2), rs.getString(3));  
					
					 Devis devis =new Devis(idDevis, codeOrd,codeMed,patient.getIdPatient(),patient.getNom(),patient.getPrenom(),dateDev);
					 
					 listeDevis.add(devis);
					 
				 }
			 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		 
		 return listeDevis;
	 }
	 
	 public List<BL> loadBL(){
		 List<BL> listeBLs =new ArrayList<BL>();
		 
		 Statement statement = null;
		 ResultSet resu = null;
		 Patient patient = null;
		 Devis devis = null;
		 
		     loadDB();
		     
			 try {
				statement=connex.createStatement();
				 resu = statement.executeQuery("Select * from public.bl");
				 
				 while (resu.next()){
					 String idBL     = resu.getString(1),
					        idDevis = resu.getString(2),					        
					        codePat  = resu.getString(3);
					  Date  dateBL  = resu.getDate(5);
					  
					 
					 PreparedStatement resuDevis = connex.prepareStatement("Select * from public.devis where iddevis= ? ");
					 resuDevis.setString(1, idDevis);
					 ResultSet rs1 = resuDevis.executeQuery();
					 while(rs1.next()){
						 
						 PreparedStatement resuPat = connex.prepareStatement("Select * from public.patient where idpatient= ? ");
						 resuPat.setString(1, codePat);
						 ResultSet rs2 = resuPat.executeQuery();					 
						 while(rs2.next())
							 patient = new Patient(codePat, rs2.getString(2), rs2.getString(3));
						  
						 String     codeOrd  = rs1.getString(2),
							        codeMed  = rs1.getString(3);							        
							  Date  dateDev  = rs1.getDate(5);
							  String   etat  = rs1.getString(6),
							         refDoc  = rs1.getString(8);
							 Double montant  = rs1.getDouble(7);
							 devis = new Devis(idDevis, codeOrd, null,patient,null); // null pour les info non necessaires dans les listes
							 
					 }
						 					
					 
					 /*PreparedStatement resuPat = connex.prepareStatement("Select * from public.patient where idpatient= ? ");
					 resuPat.setString(1, codePat);
					 ResultSet rs2 = resuPat.executeQuery();					 
					 while(rs2.next())
						 patient = new Patient(codePat, rs1.getString(2), rs1.getString(3)); */
					 
					
					 BL bl =new BL(idBL, devis,dateBL);
					 
					 listeBLs.add(bl);
					 
				 }
			 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		 
		 return listeBLs;
		 
	 }
	 
	 public List<BLF> loadBLF(){
		 List<BLF> listeBLFs =new ArrayList<BLF>();
		 
		 Statement statement = null;
		 ResultSet resu = null;
		 Patient patient = null;
		 Devis devis = null;
		 
		     loadDB();
		     
			 try {
				statement=connex.createStatement();
				 resu = statement.executeQuery("Select * from public.blf");
				 
				 while (resu.next()){
					 String idBLF = resu.getString(1),
					        etatBLF  = resu.getString(2),	
					        idDevis = resu.getString(4),
					        codePat  = resu.getString(5),
					        doc = resu.getString(6);
					  float montantBLF = resu.getFloat(3); 
					  
					 
					 PreparedStatement resuDevis = connex.prepareStatement("Select * from public.devis where iddevis= ? ");
					 resuDevis.setString(1, idDevis);
					 ResultSet rs1 = resuDevis.executeQuery();
					 while(rs1.next()){
						 
						 PreparedStatement resuPat = connex.prepareStatement("Select * from public.patient where idpatient= ? ");
						 resuPat.setString(1, codePat);
						 ResultSet rs2 = resuPat.executeQuery();					 
						 while(rs2.next())
							 patient = new Patient(codePat, rs2.getString(2), rs2.getString(3));
						  
						 String     codeOrd  = rs1.getString(2),
							        codeMed  = rs1.getString(3);							        
							  Date  dateDev  = rs1.getDate(5);
							  String   etat  = rs1.getString(6),
							         refDoc  = rs1.getString(8);
							 Double montant  = rs1.getDouble(7);
							 devis = new Devis(idDevis, codeOrd, null,patient,null); // null pour les info non necessaires dans les listes
							 
					 }				 										
					 BLF blf =new BLF(idBLF, devis);
					 
					 listeBLFs.add(blf);
					 
				 }
			 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		 
		 return listeBLFs;
		 
	 }
	 
	 
	 public List<Facture> loadFactures(){
		 List<Facture> listeFactures =new ArrayList<Facture>();
		 
		 Statement statement = null;
		 ResultSet resu = null;
		 Patient patient = null;
		 Devis devis = null;
		 BL bl=null;
		 
		     loadDB();
		     
			 try {
				statement=connex.createStatement();
				 resu = statement.executeQuery("Select * from public.facture");
				 
				 while (resu.next()){
					 String idFacture = resu.getString(1),
					        etatFacture = resu.getString(2),	
					        office      = resu.getString(5),
					        codePat = resu.getString(6),
					        refBL       = resu.getString("refbl");
					  float montantBLF  = resu.getFloat(3); 
					  
					  PreparedStatement resuBLs = connex.prepareStatement("Select * from public.bl where idbl= ? ");
					  resuBLs.setString(1, refBL);
				      ResultSet rsbl = resuBLs.executeQuery();
					  while(rsbl.next()){
						  String idDevis = rsbl.getString(2);
					/*   PreparedStatement resuDevis = connex.prepareStatement("Select * from public.devis where iddevis= ? ");
					   resuDevis.setString(1, idDevis);
					   ResultSet rs1 = resuDevis.executeQuery();
					   
					   while(rs1.next()){*/
						 
						 PreparedStatement resuPat = connex.prepareStatement("Select * from public.patient where idpatient= ? ");
						 resuPat.setString(1, codePat);
						 ResultSet rs2 = resuPat.executeQuery();					 
						 while(rs2.next())
							 patient = new Patient(codePat, rs2.getString(2), rs2.getString(3));
						  
						 String     codeOrd  = rsbl.getString(2),
							        codeMed  = rsbl.getString(3);							        
							  Date  dateDev  = rsbl.getDate(5);
							  String   etat  = rsbl.getString(6);
							         
							 
							 devis = new Devis(idDevis, codeOrd, null,patient,null); // null pour les info non necessaires dans les listes
							
							 bl = new BL(refBL, devis, rsbl.getDate(5));
					 }				 										
					// BLF blf =new BLF(idBLF, devis);
					  
					 Facture facture = new Facture(idFacture, 0, 0, office, bl);
					 System.out.println("id ="+facture.getIdFacture() + facture.getOfficine());
					 listeFactures.add(facture);
					 
				 }
			 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		 
		 return listeFactures;
		 
	 }
	 
	 public List<PriseCharge> loadPC(){ // charger les prises en charge
		 List<PriseCharge> listePCs =new ArrayList<PriseCharge>();
		 
		 Statement statement = null;
		 ResultSet resu = null;
		 Patient patient = null;
		 Devis devis = null;
		 
		     loadDB();
		     
			 try {
				statement=connex.createStatement();
				 resu = statement.executeQuery("Select * from public.prisecharge");
				 
				 while (resu.next()){
					 String idPC     = resu.getString(1),
					        idDevis  = resu.getString("refdevis"),
					        officine = resu.getString(3),
					        codePat  = resu.getString("codepatient"),
					 		refDocument  = resu.getString(7);
					  
					  float pourcentage = resu.getFloat(2);			
					  
					 
					 PreparedStatement resuDevis = connex.prepareStatement("Select * from public.devis where iddevis= ? ");
					 resuDevis.setString(1, idDevis);
					 ResultSet rs1 = resuDevis.executeQuery();
					 while(rs1.next()){
						 System.out.println("devis existe");
						 PreparedStatement resuPat = connex.prepareStatement("Select * from public.patient where idpatient= ? ");
						 resuPat.setString(1, codePat);
						 ResultSet rs2 = resuPat.executeQuery();					 
						 while(rs2.next()){
							 System.out.println("patient existe");
							 patient = new Patient(codePat, rs2.getString(2), rs2.getString(3));
						  
						 String     codeOrd  = rs1.getString(2),
							        codeMed  = rs1.getString(3);							        
							  Date  dateDev  = rs1.getDate(5);
							  String   etat  = rs1.getString(6),
							         refDoc  = rs1.getString(8);
							 Double montant  = rs1.getDouble(7);
							 devis = new Devis(idDevis, codeOrd, null,patient,null); // null pour les info non necessaires dans les listes
						 }	
					 }	  
					
					 PriseCharge pc =new PriseCharge(idPC,pourcentage,officine, devis);					 
					 listePCs.add(pc);
					 
				 }
			 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		 
		 return listePCs;
		 
	 }
	 
	 public Utilisateur verfUser(String username,String pwd) {

		 //List<Devis> listeDevis =new ArrayList<Devis>();
		 
		 Statement statement=null;
		 Utilisateur utilisateur = null;
		 Fonction fonction=null;
			 
		     loadDB();	     
			 
		     try {
				 statement=connex.createStatement();			
			     PreparedStatement resuUser = connex.prepareStatement("Select * from public.utilisateur where nom= ? and passwd= ? ");
			     resuUser.setString(1, username);
			     resuUser.setString(2, pwd );
			     ResultSet rs1 = resuUser.executeQuery();
			  
						 while(rs1.next()){
				 utilisateur = new Utilisateur(rs1.getString(1), rs1.getString(2), rs1.getString(3), rs1.getString(5), rs1.getInt(6),rs1.getString(8),rs1.getString(9),rs1.getString(10));
				 System.out.println("ssssssssss ::"+rs1.getString(10));
						 }	
				 

			 }catch (SQLException e) {
					 //e.printStackTrace();
			}
			 return utilisateur;
	 }

	 
	 public Connection loadDB(){
		 try{
			 Class.forName("org.postgresql.Driver");
		 }catch(ClassNotFoundException e){
			 
		 }
		 
		 try{
			 connex = DriverManager.getConnection(
						"jdbc:postgresql://localhost:5432/StomaBDD", "postgres",
						"root");
		 }catch(SQLException e){
			 e.printStackTrace(); 
		 }
		 return connex;
	 }
	 
	 public ResultSet afficherTable(String table){
		 
		 Statement statement = null;
		 ResultSet resu = null;
	 try {
			statement=loadDB().createStatement();
			 resu = statement.executeQuery("Select * from public."+table);
			 
		 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 return resu;
	 }
}
