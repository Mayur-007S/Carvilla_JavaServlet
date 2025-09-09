package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import doa.BookingDoa;
import doa.UserDoa;
import entities.BookingUser;
import entities.User;

/**
 * Servlet implementation class BookingController
 */
@WebServlet("/BookingController")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingController() {
        super();
        // TODO Auto-generated constructor stub
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
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		@SuppressWarnings("unused")
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		 
		int Bid = 0;
		String Carname,Model,price,name,email,password,phone,age,address,showroom;
		BookingDoa bd = new BookingDoa();
		String btn = request.getParameter("btn");
		int i;
		if(btn.equals("Submit Booking")) {
			for(i = 1;i<=10;i++)
				Bid += i;
			
			Carname = request.getParameter("carname");
			Model = request.getParameter("model");
			price = request.getParameter("price");
			name = request.getParameter("name");
			email = request.getParameter("email");
			password = request.getParameter("password");
			phone = request.getParameter("phone");
			age = request.getParameter("age");
			address = request.getParameter("address");
			showroom = request.getParameter("showroom");
			
			User user = (User)session.getAttribute("user");
			int uid = user.getUserId();
			BookingUser bu = new BookingUser(Bid,Carname,Model,price,name,email,phone,age,address,showroom,uid);
			int res = 0;
			try {
				res = bd.Insert(bu);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			 if(res == 1) {
					response.sendRedirect("Process_form.jsp");
					session.setAttribute("BookingUser", bu);
			 }else {
				 	session.setAttribute("msg", "Registration not Successfully");
				 	response.sendRedirect("Register.jsp");
			 }
		}
		
		else if(btn.equals("booking_history")) { 
			List<BookingUser> list;
			if(session.getAttribute("user")!= null) {
			User user = (User)session.getAttribute("user");		
			try {
				list = bd.getUserBooking(user);
				if(list == null) {
					session.setAttribute("msg", "No such booking history");
					response.sendRedirect("BookingHistory.jsp");
				}else {
					session.setAttribute("listofbookings", list);
					response.sendRedirect("BookingHistory.jsp");				
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			}else {
				session.setAttribute("msg2", "Login First. To get access to Booking History");
				response.sendRedirect("Login.jsp");
			}
			}
		
		else if(btn.equals("scorpio-n")) {
			BookingUser bu = new BookingUser();
			int res = 0;
			try {
				res = bd.getCarData(bu,btn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("Result from database "+res);
			if(res == 1)
			{
				response.sendRedirect("booking.jsp");
				session.setAttribute("BookingUser", bu);
			}
			else {
				response.sendRedirect("index.jsp");
				session.setAttribute("msg2", "Error 404: Page not found");
			}
			
		}
		
		else if(btn.equals("punch")) {
			BookingUser bu = new BookingUser();
			int res = 0;
			try {
				res = bd.getCarData(bu,btn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("Result from database "+res);
			if(res == 1)
			{
				response.sendRedirect("booking.jsp");
				session.setAttribute("BookingUser", bu);
			}
			else {
				response.sendRedirect("index.jsp");
				session.setAttribute("msg2", "Error 404: Page not found");
			}
			
		}
		else if(btn.equals("thar")) {
			BookingUser bu = new BookingUser();
			int res = 0;
			try {
				res = bd.getCarData(bu,btn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("Result from database "+res);
			if(res == 1)
			{
				response.sendRedirect("booking.jsp");
				session.setAttribute("BookingUser", bu);
			}
			else {
				response.sendRedirect("index.jsp");
				session.setAttribute("msg2", "Error 404: Page not found");
			}
			
		}
		else if(btn.equals("harrier")) {
			BookingUser bu = new BookingUser();
			int res = 0;
			try {
				res = bd.getCarData(bu,btn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("Result from database "+res);
			if(res == 1)
			{
				response.sendRedirect("booking.jsp");
				session.setAttribute("BookingUser", bu);
			}
			else {
				response.sendRedirect("index.jsp");
				session.setAttribute("msg2", "Error 404: Page not found");
			}
			
		}
		else if(btn.equals("nexon")) {
			BookingUser bu = new BookingUser();
			int res = 0;
			try {
				res = bd.getCarData(bu,btn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("Result from database "+res);
			if(res == 1)
			{
				response.sendRedirect("booking.jsp");
				session.setAttribute("BookingUser", bu);
			}
			else {
				response.sendRedirect("index.jsp");
				session.setAttribute("msg2", "Error 404: Page not found");
			}
			
		}
		else if(btn.equals("safari")) {
			BookingUser bu = new BookingUser();
			int res = 0;
			try {
				res = bd.getCarData(bu,btn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("Result from database "+res);
			if(res == 1)
			{
				response.sendRedirect("booking.jsp");
				session.setAttribute("BookingUser", bu);
			}
			else {
				response.sendRedirect("index.jsp");
				session.setAttribute("msg2", "Error 404: Page not found");
			}
			
		}
		else if(btn.equals("brezza")) {
			BookingUser bu = new BookingUser();
			int res = 0;
			try {
				res = bd.getCarData(bu,btn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("Result from database "+res);
			if(res == 1)
			{
				response.sendRedirect("booking.jsp");
				session.setAttribute("BookingUser", bu);
			}
			else {
				response.sendRedirect("index.jsp");
				session.setAttribute("msg2", "Error 404: Page not found");
			}
			
		}
		else if(btn.equals("XUV700")) {
			BookingUser bu = new BookingUser();
			int res = 0;
			try {
				res = bd.getCarData(bu,btn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("Result from database "+res);
			if(res == 1)
			{
				response.sendRedirect("booking.jsp");
				session.setAttribute("BookingUser", bu);
			}
			else {
				response.sendRedirect("index.jsp");
				session.setAttribute("msg2", "Error 404: Page not found");
			}
			
		}
		else if(btn.equals("grand vitara")) {
			BookingUser bu = new BookingUser();
			int res = 0;
			try {
				res = bd.getCarData(bu,btn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("Result from database "+res);
			if(res == 1)
			{
				response.sendRedirect("booking.jsp");
				session.setAttribute("BookingUser", bu);
			}
			else {
				response.sendRedirect("index.jsp");
				session.setAttribute("msg2", "Error 404: Page not found");
			}
			
		}
		
		else if(btn.equals("fronx")) {
			BookingUser bu = new BookingUser();
			int res = 0;
			try {
				res = bd.getCarData(bu,btn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("Result from database "+res);
			if(res == 1)
			{
				response.sendRedirect("booking.jsp");
				session.setAttribute("BookingUser", bu);
			}
			else {
				response.sendRedirect("index.jsp");
				session.setAttribute("msg2", "Error 404: Page not found");
			}
			
		}
		else if(btn.equals("altroz")) {
			BookingUser bu = new BookingUser();
			int res = 0;
			try {
				res = bd.getCarData(bu,btn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("Result from database "+res);
			if(res == 1)
			{
				response.sendRedirect("booking.jsp");
				session.setAttribute("BookingUser", bu);
			}
			else {
				response.sendRedirect("index.jsp");
				session.setAttribute("msg2", "Error 404: Page not found");
			}
			
		}
	}

}
