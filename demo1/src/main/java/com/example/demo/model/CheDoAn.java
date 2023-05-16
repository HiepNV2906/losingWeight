package com.example.demo.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "chedoan")
public class CheDoAn implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(columnDefinition = "nvarchar(255) not null", name = "ten")
	private String ten;
	@Column(columnDefinition = "ntext", name = "mota")
	private String moTa;
	@Column(columnDefinition = "ntext", name = "huongdan")
	private String huongDan;
	@OneToMany(mappedBy = "cheDoAn", cascade = CascadeType.ALL)
	private List<CacThanhPhan> listCacThanhPhan = new ArrayList<>();
	@OneToMany(mappedBy = "cheDoAn", cascade = CascadeType.ALL)
	private List<ThongTinXDCheDoAn> listXDCheDoAn = new ArrayList<>();
	public CheDoAn() {
		super();
	}
	public CheDoAn(int id, String ten, String moTa, String huongDan, List<CacThanhPhan> listCacThanhPhan,
			List<ThongTinXDCheDoAn> listXDCheDoAn) {
		super();
		this.id = id;
		this.ten = ten;
		this.moTa = moTa;
		this.huongDan = huongDan;
		this.listCacThanhPhan = listCacThanhPhan;
		this.listXDCheDoAn = listXDCheDoAn;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public String getHuongDan() {
		return huongDan;
	}
	public void setHuongDan(String huongDan) {
		this.huongDan = huongDan;
	}
	public List<CacThanhPhan> getListCacThanhPhan() {
		return listCacThanhPhan;
	}
	public void setListCacThanhPhan(List<CacThanhPhan> listCacThanhPhan) {
		this.listCacThanhPhan = listCacThanhPhan;
	}
	public List<ThongTinXDCheDoAn> getListXDCheDoAn() {
		return listXDCheDoAn;
	}
	public void setListXDCheDoAn(List<ThongTinXDCheDoAn> listXDCheDoAn) {
		this.listXDCheDoAn = listXDCheDoAn;
	}
}
