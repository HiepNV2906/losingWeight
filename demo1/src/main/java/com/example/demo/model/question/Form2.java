package com.example.demo.model.question;

public class Form2 {
	private String mucdich;
	private String stress;
	private int huyetap;
	private int tieuduongvatim;
	private String thechat;
	private String tocdo;
	private String level;
	public Form2() {
		super();
	}
	public Form2(String mucdich, String stress, int huyetap, int tieuduongvatim, String thechat, String tocdo,
			String level) {
		super();
		this.mucdich = mucdich;
		this.stress = stress;
		this.huyetap = huyetap;
		this.tieuduongvatim = tieuduongvatim;
		this.thechat = thechat;
		this.tocdo = tocdo;
		this.level = level;
	}
	public String getMucdich() {
		return mucdich;
	}
	public void setMucdich(String mucdich) {
		this.mucdich = mucdich;
	}
	public String getStress() {
		return stress;
	}
	public void setStress(String stress) {
		this.stress = stress;
	}
	public int getHuyetap() {
		return huyetap;
	}
	public void setHuyetap(int huyetap) {
		this.huyetap = huyetap;
	}
	public int getTieuduongvatim() {
		return tieuduongvatim;
	}
	public void setTieuduongvatim(int tieuduongvatim) {
		this.tieuduongvatim = tieuduongvatim;
	}
	public String getThechat() {
		return thechat;
	}
	public void setThechat(String thechat) {
		this.thechat = thechat;
	}
	public String getTocdo() {
		return tocdo;
	}
	public void setTocdo(String tocdo) {
		this.tocdo = tocdo;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
}
