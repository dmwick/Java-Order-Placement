

package Model;

import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.SQLException; 

public class DBconnection {
    public static Connection initializeDatabase() 
        throws SQLException, ClassNotFoundException 
    { 
        try {
            // Initialize all the information regarding 
            // Database Connection 
            String dbDriver = "com.mysql.jdbc.Driver"; 
            String dbURL = "jdbc:mysql://localhost:3306/orderpalcement";
            // Database name to access 
            //String dbName = "demo"; 
            String dbUsername = "root"; 
            String dbPassword = "123"; 

            Class.forName(dbDriver); 
            Connection con = DriverManager.getConnection(dbURL, dbUsername, dbPassword); 
            System.out.println("Database connected!");
            return con; 
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
            throw new RuntimeException("Cannot connect to the database!", e);
        }
    } 
}
