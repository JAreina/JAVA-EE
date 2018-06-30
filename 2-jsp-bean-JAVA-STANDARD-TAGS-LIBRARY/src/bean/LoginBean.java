package bean;

public class LoginBean {
	private String userName;
	private String password;
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean isValidUser()
	{
	//Validation can happen here from a number of sources
	//for example, database and LDAP
	//We are just going to hardcode a valid username and
	//password here.
	return "jareina".equals(this.userName) &&
	"jareina".equals(this.password);
	}
}
