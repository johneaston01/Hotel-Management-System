package com.tcs.service;

import org.apache.log4j.Logger;

import com.tcs.DAO.LoginDAO;


public class PaymentService {
	  Logger log = Logger.getLogger(LoginService.class);


	public String verifyLogin(String userId,String password) {
		
		LoginDAO loginDAO=new LoginDAO();
		return loginDAO.verifyLogin(userId,password);
		
	}
}
