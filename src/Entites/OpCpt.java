package Entites;

import sun.util.calendar.BaseCalendar.Date;

public class OpCpt {
	private String idOpCpt;
	private float montant;
	private Date dateOp;
	private TypeOpCpt type;
	public String getIdOpCpt() {
		return idOpCpt;
	}
	public void setIdOpCpt(String idOpCpt) {
		this.idOpCpt = idOpCpt;
	}
	public float getMontant() {
		return montant;
	}
	public void setMontant(float montant) {
		this.montant = montant;
	}
	public Date getDateOp() {
		return dateOp;
	}
	public void setDateOp(Date dateOp) {
		this.dateOp = dateOp;
	}
	public TypeOpCpt getType() {
		return type;
	}
	public void setType(TypeOpCpt type) {
		this.type = type;
	}
	public OpCpt(String idOpCpt, float montant, Date dateOp, TypeOpCpt type) {
		super();
		this.idOpCpt = idOpCpt;
		this.montant = montant;
		this.dateOp = dateOp;
		this.type = type;
	}
	
	
}
