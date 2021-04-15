
package Database;

import java.sql.Connection;
import java.sql.DriverManager;


public class DbConnection {
    static Connection co;
	public static Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcarelogistics","root","");
		}
		catch(Exception e)
		{
			System.out.println("Database Error"+e);
		}
		return co;
	}
}
