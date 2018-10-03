package com.tcs.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.tcs.service.LoginService;
import com.tcs.service.PaymentService;

/**
 * Servlet implementation class LoginController
 */
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  Logger log = Logger.getLogger(LoginController.class);

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("action");
		if("payment".equals(action))
		{
			payment(request,response);
		}
		else if ("logout".equals(action)) {
			logoutPage(request,response);
			
		}
		
	}
	public void payment(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		log.info("Now Inside payment()  method of  PaymentController class");
		response.setContentType("text/html");
		String CardNumber = request.getParameter("CardNumber");
		String Cvv = request.getParameter("Cvv");
		String PIN = request.getParameter("PIN");
		PaymentService paymentService=new PaymentService();
		
	}
	
	public void logoutPage(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException {
		
		log.info("Now Inside logout()  method of  LoginController class");
		HttpSession session=request.getSession(false);
	
		session.invalidate();
     	response.sendRedirect("/JSP/Login.jsp");
	}

}
