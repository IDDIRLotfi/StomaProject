package Entites;

import java.util.List;

import Enumerations.Etat;
import Enumerations.Officine;
import sun.util.calendar.BaseCalendar.Date;

public class Bordereau {
	private String idBordereau;
	private Officine officine;
	private Date dateEnvoi;
	private Etat etat;
	private List<Facture> factures;
	public String getIdBordereau() {
		return idBordereau;
	}
	public void setIdBordereau(String idBordereau) {
		this.idBordereau = idBordereau;
	}
	public Officine getOfficine() {
		return officine;
	}
	public void setOfficine(Officine officine) {
		this.officine = officine;
	}
	public Date getDateEnvoi() {
		return dateEnvoi;
	}
	public void setDateEnvoi(Date dateEnvoi) {
		this.dateEnvoi = dateEnvoi;
	}
	public Etat getEtat() {
		return etat;
	}
	public void setEtat(Etat etat) {
		this.etat = etat;
	}
	public List<Facture> getFactures() {
		return factures;
	}
	public void setFactures(List<Facture> factures) {
		this.factures = factures;
	}
	public Bordereau(String idBordereau, Officine officine, List<Facture> factures) {
		super();
		this.idBordereau = idBordereau;
		this.officine = officine;
		this.etat=Etat.Créé;
		this.factures = factures;
	}
	
	
}
