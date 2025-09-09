package doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.Car;
import helper.DatabaseCon;

public class CarDoa {
	private Connection con;
	private PreparedStatement pr;
	
	public List<Car> getCarData() throws SQLException {
		Car car;
		ResultSet rs = null;
		List<Car> li = new ArrayList<>();
		try {
			con = DatabaseCon.getMyConnection();
			pr = con.prepareStatement("select CarCompany,Car Model,Car Body * from carcollections2");
			rs = pr.executeQuery();
			
			while(rs.next()) {
				car = new Car();
				car.setCarName(rs.getString(1));
				car.setModel(rs.getString(2));
				car.setBody(rs.getString(3));
				
				li.add(car);
			}
		}catch(Exception e) {
			
		}finally {
			con.close();
			pr.close();
		}
		return li;
	}
}
