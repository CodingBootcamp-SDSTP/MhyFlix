import java.sql.*;

public class FlixDatabase
{
	private static FlixDatabase _instance = null;
	private Connection conn;

	public static FlixDatabase instance() {
		if(_instance == null) {
			_instance = new FlixDatabase();
		}
		return(_instance);
	}

	private FlixDatabase() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection("jdbc:mysql://localhost/mhyflix?user=iam&password=Developer&serverTimezone=UTC&useSSL=false");
			System.out.println("Connection established");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
