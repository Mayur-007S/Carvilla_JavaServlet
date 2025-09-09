package entities;

public class User {
	private int userId;
	private String userName;
	private String Email;
	private String Password;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String userName, String email, String password) {
		super();
		this.userName = userName;
		Email = email;
		Password = password;
	}

	public User(int userId, String userName, String email, String password) {
		super();
		this.userId = userId;
		this.userName = userName;
		Email = email;
		Password = password;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", Email=" + Email + ", Password=" + Password
				+ "]";
	}
	
	
	
}
