package com.nit.beans;

import java.util.Calendar;
import java.util.Date;

public class Test {
public static void main(String[] args) {
	
	Calendar c=Calendar.getInstance();
	c.setTime(new Date());
	System.out.println(Calendar.getInstance().get(Calendar.YEAR));
}
}
