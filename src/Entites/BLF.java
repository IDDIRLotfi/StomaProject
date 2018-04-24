package Entites;

import java.sql.Date;

import Enumerations.Etat;
public class BLF {
	private String idBLF;
	private  float montant;
	private Devis devis;
	private Patient patient;
	private Document doc;
	private Etat etat;
	private Date dateBLF;
	public String getIdBLF() {
		return idBLF;
	}
	public void setIdBLF(String idBLF) {
		this.idBLF = idBLF;
	}

	public float getMontant() {
		return montant;
	}
	public void setMontant(float montant) {
		this.montant = montant;
	}
	public Devis getDevis() {
		return devis;
	}
	public void setDevis(Devis devis) {
		this.devis = devis;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
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
	public BLF(String idBLF, Devis devis) {
		super();
		this.idBLF = idBLF;
		this.devis = devis;
		this.patient=devis.getPatient();
		this.montant=0;
		/*for ( Produit produit : devis.getProduits().keySet()) {
	           this.Montant= this.Montant+ produit.getPU()* devis.getProduits().get(produit);
	        }*/
	}
	
	public Date getDateBLF() {
		return dateBLF;
	}
	public void setDateBLF(Date dateBLF) {
		this.dateBLF = dateBLF;
	}
	public BLF(String idBLF, float montant, Devis devis, Patient patient,Date dateBLF, Etat etat) {
		super();
		this.idBLF = idBLF;
		this.montant = montant;
		this.devis = devis;
		this.patient = patient;
		this.dateBLF=dateBLF;
		this.etat = etat;
	}
	public BLF(String parameter, Date dateCr) {
		this.idBLF=parameter;
		this.dateBLF=dateCr;
	}
	
	
	
}
