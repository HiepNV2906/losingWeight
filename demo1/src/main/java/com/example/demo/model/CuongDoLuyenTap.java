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
@Table(name = "cuongdoluyentap")
public class CuongDoLuyenTap implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(columnDefinition = "nvarchar(255) not null", name = "loai")
	private String loai;
	@OneToMany(mappedBy = "cuongDoLuyenTap", cascade = CascadeType.ALL)
	private List<MonTheThao> listMonTheThao = new ArrayList<>();
	@OneToMany(mappedBy = "cuongDoLuyenTap", cascade = CascadeType.ALL)
	private List<ThongTinXDCheDoTapLuyen> listXDCheDoTapLuyen = new ArrayList<>();
	public CuongDoLuyenTap() {
		super();
	}
	public CuongDoLuyenTap(int id, String loai, List<MonTheThao> listMonTheThao,
			List<ThongTinXDCheDoTapLuyen> listXDCheDoTapLuyen) {
		super();
		this.id = id;
		this.loai = loai;
		this.listMonTheThao = listMonTheThao;
		this.listXDCheDoTapLuyen = listXDCheDoTapLuyen;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLoai() {
		return loai;
	}
	public void setLoai(String loai) {
		this.loai = loai;
	}
	public List<MonTheThao> getListMonTheThao() {
		return listMonTheThao;
	}
	public void setListMonTheThao(List<MonTheThao> listMonTheThao) {
		this.listMonTheThao = listMonTheThao;
	}
	public List<ThongTinXDCheDoTapLuyen> getListXDCheDoTapLuyen() {
		return listXDCheDoTapLuyen;
	}
	public void setListXDCheDoTapLuyen(List<ThongTinXDCheDoTapLuyen> listXDCheDoTapLuyen) {
		this.listXDCheDoTapLuyen = listXDCheDoTapLuyen;
	}
}
