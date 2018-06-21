public class Account
{
	private final int userId;
	private final String username;
	private final String password;
	private final int accountType;
	
	public Account(int userId, String username, String password, int accountType) {
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.accountType = accountType;
	}

	public int getUserId() {
		return(userId);
	}

	public String getUsername() {
		return(username);
	}
	
	public String getPassword() {
		return(password);
	}
	
	public int getAccountType() {
		return(accountType);
	}

	public String toString() {
		return("<id>" + getUserId() + "</id><username>" + getUsername() + "</username><password>" + getPassword() + "</password><accountType>" + getAccountType() + "</accountType>");
	}
}
