package Entites;

public class Patient {
	private String idPatient;
	private String nom;
	private String prenom;
	private String email;
	private String adresse;
	private String wilaya;
	private String commune;
	private String telfixe;
	private String telmobile;
	private String codePostal;
	
	
	
	
	public String getTelfixe() {
		return telfixe;
	}
	public void setTelfixe(String telfixe) {
		this.telfixe = telfixe;
	}
	public String getTelmobile() {
		return telmobile;
	}
	public void setTelmobile(String telmobile) {
		this.telmobile = telmobile;
	}
	public String getCodePostal() {
		return codePostal;
	}
	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getWilaya() {
		return wilaya;
	}
	public void setWilaya(String wilaya) {
		this.wilaya = wilaya;
	}
	public String getCommune() {
		return commune;
	}
	public void setCommune(String commune) {
		this.commune = commune;
	}
	public String getIdPatient() {
		return idPatient;
	}
	public void setIdPatient(String idPatient) {
		this.idPatient = idPatient;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public Patient(String idPatient, String nom, String prenom) {
		super();
		this.idPatient = idPatient;
		this.nom = nom;
		this.prenom = prenom;
	}
	public Patient(String idPatient, String nom, String prenom, String email, String adresse, String wilaya,
			String commune, String telfixe, String telmobile, String codePostal) {
		super();
		this.idPatient = idPatient;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.adresse = adresse;
		this.wilaya = wilaya;
		this.commune = commune;
		this.telfixe = telfixe;
		this.telmobile = telmobile;
		this.codePostal = codePostal;
	}
	
	
	
	
	
}
