package com.example.red.dao;

import java.util.Objects;

public class Client {

	private int id;
	private String username;
	private String name;
	private String phone;
	private String mail;
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Client() {
		
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, mail, name, password, phone, username);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Client other = (Client) obj;
		return id == other.id && Objects.equals(mail, other.mail) && Objects.equals(name, other.name)
				&& Objects.equals(password, other.password) && Objects.equals(phone, other.phone)
				&& Objects.equals(username, other.username);
	}

	@Override
	public String toString() {
		return "Client [id=" + id + ", username=" + username + ", name=" + name + ", phone=" + phone + ", mail=" + mail
				+ ", password=" + password + "]";
	}

	public Client(int id, String username, String name, String phone, String mail, String password) {
		this.id = id;
		this.username = username;
		this.name = name;
		this.phone = phone;
		this.mail = mail;
		this.password = password;
	}

	
}
