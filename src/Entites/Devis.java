package Entites;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;
import java.sql.Date;

import BDD.Connexion;
import Enumerations.Etat;


public class Devis {
	private String idDevis;
	private String codeOrdonance;
	private Utilisateur medecin;
	 private Patient patient;
	private Date  dateDevis;
	 private float montant;
	 private Document doc;
	 private Etat etat;
	 private Map <Produit,Integer> Produits;
	 
	 private String codeMedecin;
	 public void setCodeMedecin(String codeMedecin) {
		this.codeMedecin = codeMedecin;
	}
	public void setCodePatient(String codePatient) {
		this.codePatient = codePatient;
	}
	public void setNomPatient(String nomPatient) {
		this.nomPatient = nomPatient;
	}
	public void setPrenomPatient(String prenomPatient) {
		this.prenomPatient = prenomPatient;
	}


	private String codePatient;
	 public String getCodeMedecin() {
		return codeMedecin;
	}
	public String getCodePatient() {
		return codePatient;
	}
	public String getNomPatient() {
		return nomPatient;
	}
	public String getPrenomPatient() {
		return prenomPatient;
	}


	private String nomPatient;
	 private String prenomPatient;
	 
	public String getIdDevis() {
		return idDevis;
	}
	public void setIdDevis(String idDevis) {
		this.idDevis = idDevis;
	}
	public String getCodeOrdonance() {
		return codeOrdonance;
	}
	public void setCodeOrdonance(String codeOrdonance) {
		this.codeOrdonance = codeOrdonance;
	}
	public Utilisateur getMedecin() {
		return medecin;
	}
	public void setMedecin(Utilisateur medecin) {
		this.medecin = medecin;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public Date getDateDevis() {
		return dateDevis;
	}
	public void setDateDevis(Date dateDevis) {
		this.dateDevis = dateDevis;
	}
	public float getMontant() {
		this.montant=0;
		for ( Produit produit : Produits.keySet()) {
	           this.montant= this.montant+ produit.getPU()* Produits.get(produit);
	        }
		return montant;
	}
	public void setMontant(float montant) {
		this.montant = montant;
	}
	public Document getDoc() {
		return doc;
	}
	public void setDoc(Document doc) {
		this.doc = doc;
	}
	public Etat getEtat() {
		return etat;
	}
	public void setEtat(Etat etat) {
		this.etat = etat;
	}
	public Map<Produit, Integer> getProduits() {
		return Produits;
	}
	public void setProduits(Map<Produit, Integer> produits) {
		Produits = produits;
	}
	public Devis(String idDevis, String codeOrdonance, Utilisateur medecin, Patient patient,
			Map<Produit, Integer> produits) {
		super();
		this.idDevis = idDevis;
		this.codeOrdonance = codeOrdonance;
		this.medecin = medecin;
		this.patient = patient;
		Produits = produits;
		this.montant=0;
		/*for ( Produit produit : Produits.keySet()) {
	           this.montant= this.montant+ produit.getPU()* Produits.get(produit);
	        }*/
	}
	
	public void ajouterDevis(){
		Connexion cnx = new Connexion();
		Connection cnct = cnx.loadDB();
		try {
			PreparedStatement pst = cnct.prepareStatement(" insert into Devis values (?,?,?,?,?,?,?,?);");
			pst.setString(1, idDevis);
			pst.setString(2, codeOrdonance);
			pst.setString(3, medecin.getIdUser());
			pst.setString(4, patient.getIdPatient());
			pst.setDate(5, dateDevis);
			pst.setString(6, "Créé");
			pst.setFloat(7,montant);
		
			pst.setString(8, doc.getIdDocument());
			pst.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	
	
	public Devis(String idDevis, String codeOrdonance, String codeMedecin, String codePatient,String nomPatient,
			String prenomPatient, Date date) {
		
		this.idDevis = idDevis;
		this.codeOrdonance = codeOrdonance;
		this.setCodeMedecin(codeMedecin);
		this.patient = new Patient(codePatient,nomPatient,prenomPatient);
		this.setCodePatient(codePatient);
		this.setNomPatient(nomPatient);
		this.setPrenomPatient(prenomPatient);
		this.dateDevis = date;
	}
	 
	public Devis(String idDevis, Date dateDevis) {
		super();
		this.idDevis = idDevis;
		this.dateDevis = dateDevis;
		this.montant=0;
		
	}
	 
}
