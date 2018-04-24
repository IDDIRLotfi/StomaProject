package Entites;

import Enumerations.ModePayement;
import sun.util.calendar.BaseCalendar.Date;

public class Encaissement {
	private String idEncaissement ;
	private  float Montant;
	private ModePayement modeEncaissement;
	private int  numCaisse;
	private Facture facture;
	private Patient patient;
	private Date dateEncaissemen;
	private Utilisateur caissier;
	public String getIdEncaissement() {
		return idEncaissement;
	}
	public void setIdEncaissement(String idEncaissement) {
		this.idEncaissement = idEncaissement;
	}
	public float getMontant() {
		return Montant;
	}
	public void setMontant(float montant) {
		Montant = montant;
	}
	public ModePayement getModeEncaissement() {
		return modeEncaissement;
	}
	public void setModeEncaissement(ModePayement modeEncaissement) {
		this.modeEncaissement = modeEncaissement;
	}
	public int getNumCaisse() {
		return numCaisse;
	}
	public void setNumCaisse(int numCaisse) {
		this.numCaisse = numCaisse;
	}
	public Facture getFacture() {
		return facture;
	}
	public void setFacture(Facture facture) {
		this.facture = facture;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public Date getDateEncaissemen() {
		return dateEncaissemen;
	}
	public void setDateEncaissemen(Date dateEncaissemen) {
		this.dateEncaissemen = dateEncaissemen;
	}
	public Utilisateur getCaissier() {
		return caissier;
	}
	public void setCaissier(Utilisateur caissier) {
		this.caissier = caissier;
	}
	public Encaissement(String idEncaissement, ModePayement modeEncaissement, int numCaisse, Facture facture,
			Date dateEncaissemen, Utilisateur caissier) {
		super();
		this.idEncaissement = idEncaissement;
		this.modeEncaissement = modeEncaissement;
		this.numCaisse = numCaisse;
		this.facture = facture;
		this.dateEncaissemen = dateEncaissemen;
		this.caissier = caissier;
		this.patient=facture.getPatient();
		this.Montant=facture.getMontantTotal()*facture.getPourcentage();
	}
	
	

}
