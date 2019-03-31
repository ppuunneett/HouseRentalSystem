package databaseconnection;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class databasecon 
{
	static Connection co;
	public static Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/house?useSSL=false","root","xxx");
		}
                
                
		catch(Exception e)
		{
			System.out.println("Database Error"+e);
		}
		return co;
	}
	
}
