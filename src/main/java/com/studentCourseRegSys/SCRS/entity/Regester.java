package com.studentCourseRegSys.SCRS.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Regester {

	private String name;
	private String surname;
	@Id
	private String email;
	private String pass;
	
	public Regester() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Regester(String name, String surname, String email, String pass) {
		super();
		this.name = name;
		this.surname = surname;
		this.email = email;
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "Regester [name=" + name + ", surname=" + surname + ", email=" + email + ", pass=" + pass + "]";
	}
   
	
}
