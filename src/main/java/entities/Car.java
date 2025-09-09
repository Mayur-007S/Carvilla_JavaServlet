package entities;

public class Car {
	private String carName;
	private String Model;
	private String Body;
	
	public Car() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Car(String carName, String model, String body) {
		super();
		this.carName = carName;
		Model = model;
		Body = body;
	}

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public String getModel() {
		return Model;
	}

	public void setModel(String model) {
		Model = model;
	}

	public String getBody() {
		return Body;
	}

	public void setBody(String body) {
		Body = body;
	}

	@Override
	public String toString() {
		return "Car [carName=" + carName + ", Model=" + Model + ", Body=" + Body + "]";
	}
	
	
}
