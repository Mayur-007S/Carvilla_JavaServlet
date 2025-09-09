package helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseCon {
	private static Connection con;
	
	public DatabaseCon() {
        super();
    }
	
	public static Connection getMyConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/carvilla?useSSL=false&serverTimezone=UTC";
			String user = "root";
			String password = "yPB}X`8iWX/w";
			
			con = DriverManager.getConnection(url, user, password);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	return con;
	}
}
