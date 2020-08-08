package net.java.login.bean;

import java.io.Serializable;

public class LoginBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String email;
	private String password;
	private String fullName;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getfullName() {
		return fullName;
	}

	public void setfullName(String fullName) {
		this.fullName = fullName;
	}
}