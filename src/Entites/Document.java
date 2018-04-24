package Entites;

import Enumerations.TypeDoc;
import sun.util.calendar.BaseCalendar.Date;

public class Document {
	private String idDocument;
	private Dossier dossier;
	 private Date dateCreation;
	 private String url;
	 private TypeDoc type;
	public String getIdDocument() {
		return idDocument;
	}
	public void setIdDocument(String idDocument) {
		this.idDocument = idDocument;
	}
	public Dossier getDossier() {
		return dossier;
	}
	public void setDossier(Dossier dossier) {
		this.dossier = dossier;
	}
	public Date getDateCreation() {
		return dateCreation;
	}
	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public TypeDoc getType() {
		return type;
	}
	public void setType(TypeDoc type) {
		this.type = type;
	}
	public Document(String idDocument, Dossier dossier, String url, TypeDoc type) {
		super();
		this.idDocument = idDocument;
		this.dossier = dossier;
		this.url = url;
		this.type = type;
	}
	 
	 
	 
}
