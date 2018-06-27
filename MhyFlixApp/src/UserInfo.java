import java.util.Date;

public class UserInfo
{
	private final int accId;
	private final String firstname;
	private final String middlename;
	private final String lastname;
	private final int age;
	private final Date birthday;
	private final String email;

	public UserInfo(int accId, String firstname, String middlename, String lastname, int age, Date birthday, String email) {
		this.accId = accId;
		this.firstname = firstname;
		this.middlename = middlename;
		this.lastname = lastname;
		this.age = age;
		this.birthday = birthday;
		this.email = email;
	}
}
