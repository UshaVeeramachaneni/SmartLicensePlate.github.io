package com.nit.beans;

import java.util.Arrays;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Vehicle")
public class VehicleBean {
	
	@Id
	private String  userId;
	private byte[] drivingImage;
	private int driving_validity;
	private byte[] regImage;
	private int reg_validity;
	private byte[] insuranceImage;
	private int insurance_validity;
	private byte[] pollutionImage;
	private int pollution_validity;
	private int currentYear;
	@OneToOne(cascade = CascadeType.ALL)
	private PersonalBean personalBean;
	
	
	
	
	
	public int getCurrentYear() {
		return currentYear;
	}
	public void setCurrentYear(int currentYear) {
		this.currentYear = currentYear;
	}
	public PersonalBean getPersonalBean() {
		return personalBean;
	}
	public void setPersonalBean(PersonalBean personalBean) {
		this.personalBean = personalBean;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public byte[] getDrivingImage() {
		return drivingImage;
	}
	public void setDrivingImage(byte[] drivingImage) {
		this.drivingImage = drivingImage;
	}
	public int getDriving_validity() {
		return driving_validity;
	}
	public void setDriving_validity(int drivingValidity) {
		driving_validity = drivingValidity;
	}
	public byte[] getRegImage() {
		return regImage;
	}
	public void setRegImage(byte[] regImage) {
		this.regImage = regImage;
	}
	public int getReg_validity() {
		return reg_validity;
	}
	public void setReg_validity(int regValidity) {
		reg_validity = regValidity;
	}
	public byte[] getInsuranceImage() {
		return insuranceImage;
	}
	public void setInsuranceImage(byte[] insuranceImage) {
		this.insuranceImage = insuranceImage;
	}
	public int getInsurance_validity() {
		return insurance_validity;
	}
	public void setInsurance_validity(int insuranceValidity) {
		insurance_validity = insuranceValidity;
	}
	public byte[] getPollutionImage() {
		return pollutionImage;
	}
	public void setPollutionImage(byte[] pollutionImage) {
		this.pollutionImage = pollutionImage;
	}
	public int getPollution_validity() {
		return pollution_validity;
	}
	public void setPollution_validity(int pollutionValidity) {
		pollution_validity = pollutionValidity;
	}
	@Override
	public String toString() {
		return "VehicleBean [userId=" + userId + ", drivingImage=" + Arrays.toString(drivingImage)
				+ ", driving_validity=" + driving_validity + ", regImage=" + Arrays.toString(regImage)
				+ ", reg_validity=" + reg_validity + ", insuranceImage=" + Arrays.toString(insuranceImage)
				+ ", insurance_validity=" + insurance_validity + ", pollutionImage=" + Arrays.toString(pollutionImage)
				+ ", pollution_validity=" + pollution_validity + ", personalBean=" + personalBean + "]";
	}
	
	
	
	

}
