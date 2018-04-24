package Entites;

public class Produit {
	private String idProduit;
	private String libelle ;
	private int qte;
	private float PU;
	private int qteStock;
	private int dureeReserv;
	public int getQteStock() {
		return qteStock;
	}
	public void setQteStock(int qteStock) {
		this.qteStock = qteStock;
	}
	public int getDureeReserv() {
		return dureeReserv;
	}
	public void setDureeReserv(int dureeReserv) {
		this.dureeReserv = dureeReserv;
	}

	
	
	 public int getQte() {
		return qte;
	}
	public void setQte(int qte) {
		this.qte = qte;
	}
	
	 private String marque;
	public String getIdProduit() {
		return idProduit;
	}
	public void setIdProduit(String idProduit) {
		this.idProduit = idProduit;
	}
	public String getLibelle() {
		return libelle;
	}
	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
	public float getPU() {
		return PU;
	}
	public void setPU(float pU) {
		PU = pU;
	}

	public String getMarque() {
		return marque;
	}
	public void setMarque(String marque) {
		this.marque = marque;
	}
	public Produit(String idProduit, String libelle, float pU, int qteStock, String marque) {
		super();
		this.idProduit = idProduit;
		this.libelle = libelle;
		PU = pU;
		this.qteStock = qteStock;
		this.marque = marque;
	}
	 // Temporaire Il faut ajouter le constructeur par défaut
	public Produit(String idProduit, String libelle, int qteReserv,float pU) {
		super();
		this.idProduit = idProduit;
		this.libelle = libelle;
		this.qte=qteReserv;
		this.PU = pU;
		
	}
	 

}
