package com.nit.service;

import com.nit.beans.PersonalBean;
import com.nit.beans.User;
import com.nit.beans.VehicleBean;
import com.nit.dao.UserDAO;

public class UserService {

	UserDAO dao=new UserDAO();
	
	public String loginCheck(User rb) {
		
		return dao.loginCheck(rb);
	}
	public int uploadPersonal(PersonalBean p) throws Exception {
		return dao.uploadPersonal(p);
	}
	public int uploadVehicle(VehicleBean v) {
		return dao.uploadVehicle(v);
	}
	public PersonalBean getPersonalDetails(String userId) {
		return dao.getPersonalDetails(userId);
	}
	public int changePersonal(PersonalBean p) {
		return dao.changePersonal(p);
	}
	public VehicleBean getEntireData(String userId) {
		return dao.getEntireData(userId);
	}
	

}
