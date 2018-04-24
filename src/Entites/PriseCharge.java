package Entites;

import Enumerations.Officine;
import java.sql.Date;

public class PriseCharge {
	private String idPC;
	private float pourcentage;
	private String officine;
	private Patient patient;
	private Date dateFin;
	private Devis devis;
	private Document doc;
	public String getIdPC() {
		return idPC;
	}
	public void setIdPC(String idPC) {
		this.idPC = idPC;
	}
	public float getPourcentage() {
		return pourcentage;
	}
	public void setPourcentage(float pourcentage) {
		this.pourcentage = pourcentage;
	}
	public String getOfficine() {
		return officine;
	}
	public void setOfficine(String officine) {
		this.officine = officine;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public Date getDateFin() {
		return dateFin;
	}
	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}
	public Devis getDevis() {
		return devis;
	}
	public void setDevis(Devis devis) {
		this.devis = devis;
	}
	public Document getDoc() {
		return doc;
	}
	public void setDoc(Document doc) {
		this.doc = doc;
	}
	public PriseCharge(String idPC, float pourcentage, String officine, Date dateFin, Devis devis) {
		super();
		this.idPC = idPC;
		this.pourcentage = pourcentage;
		this.officine = officine;
		this.dateFin = dateFin;
		this.devis = devis;
		this.patient=devis.getPatient();
	}
	
	public PriseCharge(String idPC, float pourcentage, String officine, Devis devis) {
		super();
		this.idPC = idPC;
		this.pourcentage = pourcentage;
		this.officine = officine;		
		this.devis = devis;
		this.patient= devis.getPatient();
	}
	
	
	
}
