package com.covid19.controller.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
@Entity
@Table(name="tData")
public class Data {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "sName")
	private String sName;

	@Column(name = "sFName")
	private String sFName;

	@Column(name = "sRegistrattion")
	private String sRegistrattion;

	@Column(name = "sCnic")
	private String sCnic;

	@Column(name = "phone")
	private String phone;

	@Column(name = "email")
	private String email;

	@Column(name = "sGender")
	private String sGender;

	@Column(name = "sDateOfVacination")
	private String sDateOfVacination;

	@Column(name = "vacineName")
	private String vacineName;



	public String getsName() {
		return sName;
	}

	public String getsFName() {
		return sFName;
	}

	public String getsRegistrattion() {
		return sRegistrattion;
	}

	public int getId() {
		return id;
	}

	public String getsCnic() {
		return sCnic;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getsGender() {
		return sGender;
	}

	public String getsDateOfVacination() {
		return sDateOfVacination;
	}

	public String getVacineName() {
		return vacineName;
	}



	public void setId(int id) {
		this.id = id;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public void setsFName(String sFName) {
		this.sFName = sFName;
	}

	public void setsRegistrattion(String sRegistrattion) {
		this.sRegistrattion = sRegistrattion;
	}

	public void setsCnic(String sCnic) {
		this.sCnic = sCnic;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setsGender(String sGender) {
		this.sGender = sGender;
	}

	public void setsDateOfVacination(String sDateOfVacination) {
		this.sDateOfVacination = sDateOfVacination;
	}

	public void setVacineName(String vacineName) {
		this.vacineName = vacineName;
	}



}
