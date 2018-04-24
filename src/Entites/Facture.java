package Entites;
import Enumerations.Etat;
import java.sql.Date;



public class Facture {
	private String idFacture;
	private  float  montantTotal;
	private  float  pourcentage;
	private String  officine;
	private Patient patient;
	private BL bl;
	private Document doc;
	private Etat etat;
	private Date dateFacture;
	
	public String getIdFacture() {
		return idFacture;
	}
	
	public void setIdFacture(String idFacture) {
		this.idFacture = idFacture;
	}

	public float getMontantTotal() {
		return montantTotal;
	}
	
	public void setMontantTotal(float montantTotal) {
		montantTotal = montantTotal;
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
	
	public BL getBl() {
		return bl;
	}
	
	public void setBl(BL bl) {
		this.bl = bl;
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
	
	public void setDateFacture(Date dateFacture) {
		this.dateFacture = dateFacture;
	}
	
	public Date getDateFacture() {
		return dateFacture;
	}
	
	public Facture(String idFacture, float montantTotal, float pourcentage, String officine, BL bl) { //utilisé dans les listes
		super();
		this.idFacture = idFacture;
		this.montantTotal = montantTotal;
		this.pourcentage = pourcentage;
		this.officine = officine;
		this.bl = bl;
		this.etat=Etat.Créé;
		this.patient=bl.getPatient();
		
	}
	
	public Facture(String idFacture, float montantTotal, float pourcentage, String officine, BL bl,Date dateFacture) { // Dans les forms
		super();
		this.idFacture = idFacture;
		this.montantTotal = montantTotal;
		this.pourcentage = pourcentage;
		this.officine = officine;
		this.bl = bl;
		this.etat=Etat.Créé;
		this.patient=bl.getPatient();
		this.dateFacture=dateFacture;
		
	}
	
	public Facture(String parameter, Date dateCr) {
		this.idFacture=parameter;
		this.dateFacture=dateCr;
	}
		
	
}
