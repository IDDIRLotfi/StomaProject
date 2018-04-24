package Entites;

import java.util.Map;

import sun.util.calendar.BaseCalendar.Date;

public class Mouvement {
	private String idMouvement;
	 private Date dateMvt;
		private char TypeMvt;
		 private Document doc;
		 private Map <Produit,Integer> Produits;
	 public String getIdMouvement() {
		return idMouvement;
	}
	public void setIdMouvement(String idMouvement) {
		this.idMouvement = idMouvement;
	}
	public Date getDateMvt() {
		return dateMvt;
	}
	public void setDateMvt(Date dateMvt) {
		this.dateMvt = dateMvt;
	}
	public char getTypeMvt() {
		return TypeMvt;
	}
	public void setTypeMvt(char typeMvt) {
		TypeMvt = typeMvt;
	}
	public Document getDoc() {
		return doc;
	}
	public void setDoc(Document doc) {
		this.doc = doc;
	}
	public Map<Produit, Integer> getProduits() {
		return Produits;
	}
	public Mouvement(String idMouvement, Date dateMvt, char typeMvt, Map<Produit, Integer> produits) {
		super();
		this.idMouvement = idMouvement;
		this.dateMvt = dateMvt;
		TypeMvt = typeMvt;
		Produits = produits;
	}
	public void setProduits(Map<Produit, Integer> produits) {
		Produits = produits;
	}

}
