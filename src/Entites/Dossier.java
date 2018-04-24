package Entites;

public class Dossier {
	private String idDossier;
	private String libelle;
	 private Dossier dossierParent ;
	 private Patient patient;
	public String getIdDossier() {
		return idDossier;
	}
	public void setIdDossier(String idDossier) {
		this.idDossier = idDossier;
	}
	public String getLibelle() {
		return libelle;
	}
	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
	public Dossier getDossierParent() {
		return dossierParent;
	}
	public void setDossierParent(Dossier dossierParent) {
		this.dossierParent = dossierParent;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public Dossier(String idDossier, String libelle, Dossier dossierParent, Patient patient) {
		super();
		this.idDossier = idDossier;
		this.libelle = libelle;
		this.dossierParent = dossierParent;
		this.patient = patient;
	}
	 
	 
}
