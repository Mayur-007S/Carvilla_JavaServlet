package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import doa.UserDoa;
import entities.User;
import helper.GEmailSender;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		@SuppressWarnings("unused")
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		 
		String name,email,password,repeatpassword;
		UserDoa userdoa = new UserDoa();
		String btn = request.getParameter("btn");
		
		if(btn.equals("Register")) {
			 name = request.getParameter("fullname");
			 email = request.getParameter("email");
			 password = request.getParameter("password");
			 repeatpassword = request.getParameter("repeat-password");
			 
			 System.out.println(password+" "+repeatpassword);
			 
			 if(password.equals(repeatpassword) == false) {
				 session.setAttribute("msg", "Password and Repeat Password are not same");
				 response.sendRedirect("Register.jsp");
			 }else {
				 if(userdoa.getUserByEmail(email) == 1) {
						session.setAttribute("msg", "Email already exists");
						response.sendRedirect("Register.jsp");
				 }else {
					 User user = new User(name, email, password);
					 int res = userdoa.insertUser(user);
					 
					 if(res == 1) {
						 	boolean b = GEmailSender.sendEmail(email,"Registration Successfully");
						 	if(b) {
						 		System.out.println("Email send successfully");
						 	}else {
						 		System.out.println("Email not send successfully");
						 	}
							session.setAttribute("msg2", "Registration Successfully. Please Login to continue");
							response.sendRedirect("Login.jsp");
							session.setAttribute("user", user);
					 }else {
						 	session.setAttribute("msg", "Registration not Successfully");
						 	response.sendRedirect("Register.jsp");
					 }
				 }
			 }
		}
		
		if(btn.equals("Login")) {
			 email = request.getParameter("email");
			 password = request.getParameter("password");
			
			 ResultSet res = userdoa.getLoginByUser(email, password);
			 if(res != null) {
				try {
					if (res.next()) {
						User user = new User();	
						user.setUserId(res.getInt(1));
						user.setUserName(res.getString(2));
						user.setEmail(res.getString(3));
						user.setPassword(res.getString(4));
						session.setAttribute("user", user);
						
						session.setAttribute("msg2", "Login Successfully");
						response.sendRedirect("index.jsp");
					} else {
						session.setAttribute("msg2", "Email and Password are Invalid");
						response.sendRedirect("Login.jsp");
					}
				}catch (SQLException e) {
					e.printStackTrace();
				}
			 }else {
				 session.setAttribute("msg2", "Email and Password are Invalid");
				 response.sendRedirect("Login.jsp");
			 }
		}
		
		if (btn.equals("Logout")) {
			if(session.getAttribute("user") != null) {
                User user = (User) session.getAttribute("user");
                
                int res = userdoa.getLogoutByUser(user);
				if (res == 1) {
					session.invalidate();
					response.sendRedirect("Login.jsp");
				} else {
					session.setAttribute("msg2", "Logout Failed");
					response.sendRedirect("index.jsp");
				}            
		}else {
			session.setAttribute("msg2", "Please Login First");
            response.sendRedirect("Login.jsp");
        }
		}
  }
	}

