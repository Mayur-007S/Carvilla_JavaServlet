package entities;

public class BookingUser {
	private int Bid;
	private String carName;
	private String model;
	private String price;
	private String name;
	private String email;
	private String phone;
	private String age;
	private String address;
	private String showroom;
	private int Uid;
	
	public BookingUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookingUser(String carName, String model, String price, String name, String email, String phone, String age,
			String address, String showroom, int uid) {
		super();
		this.carName = carName;
		this.model = model;
		this.price = price;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.age = age;
		this.address = address;
		this.showroom = showroom;
		this.Uid = uid;
	}

	public BookingUser(int bid, String carName, String model, String price, String name, String email, String phone,
			String age, String address, String showroom, int uid) {
		super();
		Bid = bid;
		this.carName = carName;
		this.model = model;
		this.price = price;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.age = age;
		this.address = address;
		this.showroom = showroom;
		Uid = uid;
	}

	public int getBid() {
		return Bid;
	}

	public void setBid(int bid) {
		Bid = bid;
	}

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getShowroom() {
		return showroom;
	}

	public void setShowroom(String showroom) {
		this.showroom = showroom;
	}

	public int getUid() {
		return Uid;
	}

	public void setUid(int uid) {
		Uid = uid;
	}

	@Override
	public String toString() {
		return "BookingUser [Bid=" + Bid + ", carName=" + carName + ", model=" + model + ", price=" + price + ", name="
				+ name + ", email=" + email + ", phone=" + phone + ", age=" + age + ", address=" + address
				+ ", showroom=" + showroom + ", Uid=" + Uid + "]";
	}

	
	

}
