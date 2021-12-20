package com.nit.beans;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="PERSONAL")
public class PersonalBean {
	
	@Id
	private String userId;
	private String userName;
	private String pin;
	private String address;
	private String phone;
	private String email;
	private String aadhar;
	private String gender;
	private String dob;
	@Column(name="image")
	private byte[] personImage;
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public byte[] getPersonImage() {
		return personImage;
	}
	public void setPersonImage(byte[] personImage) {
		this.personImage = personImage;
	}
	@Override
	public String toString() {
		return "PersonalBean [aadhar=" + aadhar + ", address=" + address
				+ ", dob=" + dob + ", email=" + email + ", gender=" + gender
				+ ", personImage=" + Arrays.toString(personImage) + ", phone="
				+ phone + ", pin=" + pin + ", userId=" + userId + ", userName="
				+ userName + "]";
	}
	
	
	

}
