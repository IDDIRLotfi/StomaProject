package Entites;

public class TypeOpCpt {
	private String Idtypecpt;
	private String libelle;
	private  int cptAdebiter;
	private int cptAcrediter ;
	public String getIdtypecpt() {
		return Idtypecpt;
	}
	public void setIdtypecpt(String idtypecpt) {
		Idtypecpt = idtypecpt;
	}
	public String getLibelle() {
		return libelle;
	}
	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
	public int getCptAdebiter() {
		return cptAdebiter;
	}
	public void setCptAdebiter(int cptAdebiter) {
		this.cptAdebiter = cptAdebiter;
	}
	public int getCptAcrediter() {
		return cptAcrediter;
	}
	public void setCptAcrediter(int cptAcrediter) {
		this.cptAcrediter = cptAcrediter;
	}
	public TypeOpCpt(String idtypecpt, String libelle, int cptAdebiter, int cptAcrediter) {
		super();
		Idtypecpt = idtypecpt;
		this.libelle = libelle;
		this.cptAdebiter = cptAdebiter;
		this.cptAcrediter = cptAcrediter;
	}
	
	
}
