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
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "cacthanhphan")
public class CacThanhPhan implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(columnDefinition = "nvarchar(255) not null", name = "tenthanhphan")
	private String tenThanhPhan;
	@Column(name = "phantram", nullable = false)
	private int phanTram;
	@OneToMany(mappedBy = "cacThanhPhan", cascade = CascadeType.ALL)
	private List<ThucPham> listThucPham = new ArrayList<>();
	@ManyToOne
	@JoinColumn(name="chedoanid")
	private CheDoAn cheDoAn;
	public CacThanhPhan() {
		super();
	}
	public CacThanhPhan(int id, String tenThanhPhan, int phanTram, List<ThucPham> listThucPham, CheDoAn cheDoAn) {
		super();
		this.id = id;
		this.tenThanhPhan = tenThanhPhan;
		this.phanTram = phanTram;
		this.listThucPham = listThucPham;
		this.cheDoAn = cheDoAn;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenThanhPhan() {
		return tenThanhPhan;
	}
	public void setTenThanhPhan(String tenThanhPhan) {
		this.tenThanhPhan = tenThanhPhan;
	}
	public int getPhanTram() {
		return phanTram;
	}
	public void setPhanTram(int phanTram) {
		this.phanTram = phanTram;
	}
	public List<ThucPham> getListThucPham() {
		return listThucPham;
	}
	public void setListThucPham(List<ThucPham> listThucPham) {
		this.listThucPham = listThucPham;
	}
	public CheDoAn getCheDoAn() {
		return cheDoAn;
	}
	public void setCheDoAn(CheDoAn cheDoAn) {
		this.cheDoAn = cheDoAn;
	}
}
