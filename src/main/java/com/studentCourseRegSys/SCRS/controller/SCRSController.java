package com.studentCourseRegSys.SCRS.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.studentCourseRegSys.SCRS.entity.Regester;

@Controller
public class SCRSController {
	@Autowired
	SessionFactory sf;

	@RequestMapping("homePage")
	public String homePage() {
		return ("index");
	}

	@RequestMapping("register")
	public String register() {
		return ("login");
	}

	@RequestMapping("logout")
	public String logout() {
		return ("index");
	}

	@RequestMapping("regesterCheck")
	public String regesterCheck(Regester reg) {
		System.out.println(5);
		Session ses = sf.openSession();
		Transaction tr = ses.beginTransaction();
		ses.save(reg);
		tr.commit();
		return ("login");
	}

	@RequestMapping("loginCheck")
	public String loginCheck(String email, String pass) throws ClassNotFoundException, SQLException {
		String eId = email;
		String ePass = pass;
		Class.forName("com.mysql.jdbc.Driver");
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/SCRS", "root", "root");
		Statement s = c.createStatement();
		ResultSet r = s.executeQuery("select * from  regester");
		while (r.next()) {
			String dId = r.getString(1);
			String dPass = r.getString(3);
			if (eId.equals(dId) && ePass.equals(dPass)) {
				System.out.println("login success..");
				return ("userHomePage");
			} else {
				System.out.println("failed");
				return ("login");
			}
		}
		return null;
	}

	@RequestMapping("getCourse")
	public String getCourse() {
		return ("getCourse");
	}

}
