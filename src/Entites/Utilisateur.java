package Entites;

import Enumerations.Fonction;
import sun.util.calendar.BaseCalendar.Date;

public class Utilisateur {
	private String idUser;
	private String nom;
	private String prenom;
	private String email;
	private String motDePass;
	private String urlphoto;
	private String numTeleph;
	public String getNumTeleph() {
		return numTeleph;
	}
	public void setNumTeleph(String numTeleph) {
		this.numTeleph = numTeleph;
	}
	public String getUrlphoto() {
		return urlphoto;
	}
	public void setUrlphoto(String urlphoto) {
		this.urlphoto = urlphoto;
	}
	private Date dateNais;
	private String fonction;
	private int numPoste;
	public String getIdUser() {
		return idUser;
	}
	public void setIdUser(String idUser) {
		this.idUser = idUser;
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
	public Date getDateNais() {
		return dateNais;
	}
	public void setDateNais(Date dateNais) {
		this.dateNais = dateNais;
	}
	public String getFonction() {
		return fonction;
	}
	public void setFonction(String fonction) {
		this.fonction = fonction;
	}
	public int getNumPoste() {
		return numPoste;
	}
	public void setNumPoste(int numPoste) {
		this.numPoste = numPoste;
	}
	
	/**public Utilisateur(String idUser, String nom, String prenom, Fonction fonction, int numPoste,String motDePass) {
		super();
		this.idUser = idUser;
		this.nom = nom;
		this.prenom = prenom;
		this.fonction = fonction;
		this.numPoste = numPoste;
		this.motDePass=motDePass;
	}**/
	
	public Utilisateur(String idUser, String nom, String prenom, String fonction, int numPoste,String urlphoto ,String email,String numTeleph) {
		super();
		this.idUser = idUser;
		this.nom = nom;
		this.prenom = prenom;
		this.fonction = fonction;
		this.numPoste = numPoste;
		this.urlphoto = urlphoto;
		this.email = email;
		this.numTeleph = numTeleph;
		
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMotDePass() {
		return motDePass;
	}
	public void setMotDePass(String motDePass) {
		this.motDePass = motDePass;
	}
	
	
	
}
