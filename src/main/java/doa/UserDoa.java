package doa;
import java.sql.*;

import entities.User;
import helper.DatabaseCon;

public class UserDoa {
	
	private Connection con;
	private PreparedStatement pr;
	
	
	public int insertUser(User user) {
		int res = 0;
		try {
			con = DatabaseCon.getMyConnection();
			if(con == null) {
				throw new RuntimeException("Database connection is null. Check JDBC driver or DB config.");
			}
			pr = con.prepareStatement("insert into user(fullname,email,password) value(?,?,?)");
			pr.setString(1, user.getUserName());
			pr.setString(2, user.getEmail());
			pr.setString(3, user.getPassword());
			
			res = pr.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
		
	}
	
	public int getUserByEmail(String email) {
		ResultSet res = null;
		int re = 0;
		try {
			con = DatabaseCon.getMyConnection();
			if(con == null) {
				throw new RuntimeException("Database connection is null. Check JDBC driver or DB config.");
			}
			pr = con.prepareStatement("select * from user where email=?");
			pr.setString(1, email);
			
			res = pr.executeQuery();
			
			if (res.next()) {
				re = 1;
			} else {
				re = 0;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("email is alredy exits"+re);
		return re;
	}
	
	public ResultSet getLoginByUser(String email,String password) {
		ResultSet res = null;
		try {
			con = DatabaseCon.getMyConnection();
			if(con == null) {
				throw new RuntimeException("Database connection is null. Check JDBC driver or DB config.");
			}
			pr = con.prepareStatement("select * from user where email=? and password=?");
			pr.setString(1, email);
			pr.setString(2, password);
			res = pr.executeQuery();
			

		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	public int getLogoutByUser(User user) {
		int res = 0;
		try {
			con = DatabaseCon.getMyConnection();
			if(con == null) {
				throw new RuntimeException("Database connection is null. Check JDBC driver or DB config.");
			}
			pr = con.prepareStatement("delete from user where email=? and password=?");
			pr.setString(1, user.getEmail());
			pr.setString(2, user.getPassword());
			
			res = pr.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
		
	}
}
