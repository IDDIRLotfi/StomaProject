package Entites;

import Enumerations.Etat;
import java.sql.Date;

public class BL {
	private String idBL;
	private Devis devis;
	private Patient patient;
	private Date dateBL;
	private Document doc;
	private Etat etat;
	public String getIdBL() {
		return idBL;
	}
	public void setIdBL(String idBL) {
		this.idBL = idBL;
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
	public BL(String idBL, Devis devis, Date dateBL) {
		super();
		this.idBL = idBL;
		this.devis = devis;
		this.patient= devis.getPatient();
		this.dateBL = dateBL;
	}
	
	public BL(String idBL, Devis devis, Patient patient, Date dateBL, Etat etat) {
		super();
		this.idBL = idBL;
		this.devis = devis;
		this.patient = patient;
		this.dateBL = dateBL;
		this.etat = etat;
	}
	public BL(String idBL, Patient patient, Date dateBL, Etat etat) {
		super();
		this.idBL = idBL;
		this.patient = patient;
		this.dateBL = dateBL;
		this.etat = etat;
	}
	public BL(String parameter, Date dateCr) {
		this.idBL=parameter;
		this.dateBL=dateCr;
	}
	
}
