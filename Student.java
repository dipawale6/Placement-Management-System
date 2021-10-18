package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.*;

@Entity
@Table(name="StudentDetails")
public class Student {
	@Id
	private int id;
	@Column(name="Name")
	private String name;
	@Column(name="StudInfo")
	private String qualification;
	private Date addedDate;
public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
public Student(String name, String qualification, Date addedDate) {
		super();
		this.id = new Random().nextInt(10000);
		this.name = name;
		this.qualification = qualification;
		this.addedDate = addedDate;
	}
public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

}
