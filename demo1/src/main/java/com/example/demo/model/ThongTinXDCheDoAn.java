package com.example.demo.model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "thongtinxdchedoan")
public class ThongTinXDCheDoAn implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(columnDefinition = "nvarchar(255) not null", name = "mucdichgiamcan")
	private String mucDichGiamCan;
	@Column(name = "caohuyetap", nullable = false)
	private int caoHuyetAp;
	@Column(name = "tieuduongvatim", nullable = false)
	private int tieuDuongvaTim;
	@Column(columnDefinition = "nvarchar(255) not null", name = "stress")
	private String stress;
	@Column(name = "bmi", nullable = false)
	private int bMI;
	@ManyToOne
	@JoinColumn(name="chedoanid")
	private CheDoAn cheDoAn;
	public ThongTinXDCheDoAn() {
		super();
	}
	public ThongTinXDCheDoAn(int id, String mucDichGiamCan, int caoHuyetAp, int tieuDuongvaTim, String stress, int bMI,
			CheDoAn cheDoAn) {
		super();
		this.id = id;
		this.mucDichGiamCan = mucDichGiamCan;
		this.caoHuyetAp = caoHuyetAp;
		this.tieuDuongvaTim = tieuDuongvaTim;
		this.stress = stress;
		this.bMI = bMI;
		this.cheDoAn = cheDoAn;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMucDichGiamCan() {
		return mucDichGiamCan;
	}
	public void setMucDichGiamCan(String mucDichGiamCan) {
		this.mucDichGiamCan = mucDichGiamCan;
	}
	public int getCaoHuyetAp() {
		return caoHuyetAp;
	}
	public void setCaoHuyetAp(int caoHuyetAp) {
		this.caoHuyetAp = caoHuyetAp;
	}
	public int getTieuDuongvaTim() {
		return tieuDuongvaTim;
	}
	public void setTieuDuongvaTim(int tieuDuongvaTim) {
		this.tieuDuongvaTim = tieuDuongvaTim;
	}
	public String getStress() {
		return stress;
	}
	public void setStress(String stress) {
		this.stress = stress;
	}
	public int getbMI() {
		return bMI;
	}
	public void setbMI(int bMI) {
		this.bMI = bMI;
	}
	public CheDoAn getCheDoAn() {
		return cheDoAn;
	}
	public void setCheDoAn(CheDoAn cheDoAn) {
		this.cheDoAn = cheDoAn;
	}
}
