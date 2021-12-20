package com.nit.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;

import com.nit.beans.PersonalBean;
import com.nit.beans.User;
import com.nit.beans.VehicleBean;
import com.nit.util.HibernateSessionFactory;

public class UserDAO{

	Session session=null;

	public UserDAO() {
	session =HibernateSessionFactory.getSession();
	//System.out.println("connection established..."+session);
	}
	
	
	public List<String> getUserIds()
	{
		Criteria criteria = session.createCriteria(PersonalBean.class); 
		Projection projection = Projections.property("userId"); 
		criteria.setProjection(projection); 
		return criteria.list();
		
	}
	
	
	
	public String loginCheck(User regbean) {
		
		User user=(User)session.get(User.class, regbean.getUserName());
		if(user!=null)
		{
			if(user.getPassword().equals(regbean.getPassword()))
			{
				return user.getRole();
			}
		}
		session.close();
		return "";
	}
	public int uploadPersonal(PersonalBean p) throws Exception {
		try
		{
		Transaction trns=session.beginTransaction();
		User user=new User();
		user.setPassword(p.getPin());
		user.setRole("USER");
		user.setUserName(p.getUserId());
		session.save(p);
		session.save(user);
		trns.commit();
		session.close();
		}
		catch(Exception e)
		{
			throw new Exception("Already Existed..");
		}
		return 1;
	}


	public int uploadVehicle(VehicleBean v) {
		Transaction trns=session.beginTransaction();
		PersonalBean pb=session.get(PersonalBean.class, v.getUserId());
		v.setPersonalBean(pb);
		session.saveOrUpdate(v);
		trns.commit();
		session.close();
		return 1;
	}


	public PersonalBean getPersonalDetails(String userId) {
		
		PersonalBean vb= session.get(PersonalBean.class,userId);
		session.close();
		return vb;
	}


	public int changePersonal(PersonalBean p) {
		Transaction trns=session.beginTransaction();
		if(p.getPersonImage().length>0)
		{
			Query qry=session.createQuery("update PersonalBean p set p.address=:add,p.phone=:ph,p.email=:em,p.personImage=:pm where p.userId=:id");
			qry.setParameter("add", p.getAddress());
			qry.setParameter("ph",p.getPhone());
			qry.setParameter("em", p.getEmail());
			qry.setParameter("id", p.getUserId());
			qry.setParameter("pm", p.getPersonImage());
			qry.executeUpdate();
		}
		else
		{
			Query qry=session.createQuery("update PersonalBean p set p.address=:add,p.phone=:ph,p.email=:em where p.userId=:id");
			qry.setParameter("add", p.getAddress());
			qry.setParameter("ph",p.getPhone());
			qry.setParameter("em", p.getEmail());
			qry.setParameter("id", p.getUserId());
			qry.executeUpdate();
		}

		trns.commit();
		session.close();
		return 1;
	}


	public VehicleBean getEntireData(String userId) {
		PersonalBean pb=session.get(PersonalBean.class, userId);
		VehicleBean vb=session.get(VehicleBean.class, userId);
		vb.setPersonalBean(pb);
		return vb;
	}
	
	
}
