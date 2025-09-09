package doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.BookingUser;
import entities.User;
import helper.DatabaseCon;

public class BookingDoa {
	private Connection con;
	private PreparedStatement pr;
	
	public int Insert(BookingUser bu) throws SQLException {
		int res = 0;
		try {
				con = DatabaseCon.getMyConnection();
				pr = con.prepareStatement("insert into bookings(username,email,phone,age,address,CarName,Model,price,showroom,clientId) values(?,?,?,?,?,?,?,?,?,?)");
				pr.setString(1, bu.getName());
				pr.setString(2, bu.getEmail());
				pr.setString(3, bu.getPhone());
				pr.setString(4, bu.getAge());
				pr.setString(5, bu.getAddress());
				pr.setString(6, bu.getCarName());
				pr.setString(7, bu.getModel());
				pr.setString(8, bu.getPrice());
				pr.setString(9, bu.getShowroom());
				pr.setInt(10, bu.getUid());
				
				res = pr.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}	
		finally {
			con.close();
			pr.close();
		}
		
		return res;
	}
	
	public int getCarData(BookingUser bu,String model) throws SQLException {
		ResultSet res = null;
		int rs = 0;
		try {
			con = DatabaseCon.getMyConnection();
			pr = con.prepareStatement("SELECT * FROM carcollections WHERE CarModel = ?");
			pr.setString(1, model);
			
			res = pr.executeQuery();
			if(res.next()) {
				bu.setCarName(res.getString(2));
				bu.setModel(res.getString(3));
				bu.setPrice(res.getString(5));;
				rs = 1;
			}else {
				System.out.println("Failed to fetch data from Database");
			}
	}catch(Exception e) {
		e.printStackTrace();
	}
	finally {
		res.close();
		con.close();
		pr.close();
	}
		return rs;
	}
	
	public List<BookingUser> getUserBooking(User user) throws SQLException {
		BookingUser bu;
		ResultSet res = null;
		List<BookingUser> list = new ArrayList<>();
		try {
			con = DatabaseCon.getMyConnection();
			pr = con.prepareStatement("SELECT * FROM bookings WHERE email = ?");
			pr.setString(1, user.getEmail());
			

			res = pr.executeQuery();
			while(res.next()) {
				bu = new BookingUser();
				bu.setBid(res.getInt(1));
				bu.setName(res.getString(2));
				bu.setEmail(res.getString(3));
				bu.setPhone(res.getString(4));
				bu.setAge(res.getString(5));
				bu.setAddress(res.getString(6));
				bu.setCarName(res.getString(7));
				bu.setModel(res.getString(8));
				bu.setPrice(res.getString(9));;
				bu.setShowroom(res.getString(10));
				
				list.add(bu);
				System.out.println("Record found");
			}
				System.out.println("Failed to fetch data from Database");
			
	}catch(Exception e) {
		e.printStackTrace();
	}
	finally {
		con.close();
		pr.close();
	}
		return list;
	}
}
