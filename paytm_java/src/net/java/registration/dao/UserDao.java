package net.java.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.java.registration.model.User;

public class UserDao {
	
	public boolean validate2(User user) throws ClassNotFoundException {
		boolean status2 = false;

		Class.forName("com.mysql.jdbc.Driver");
		try (Connection connection2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking?useSSL=false", "root", "");
				
			PreparedStatement preparedStatement2 = connection2.prepareStatement("select * from registration where email = ? and mobile = ? ")) {
			preparedStatement2.setString(1, user.getEmail());
			preparedStatement2.setString(2, user.getMobile());
			ResultSet rs2 = preparedStatement2.executeQuery();
			status2 = rs2.next();

		} catch (SQLException e) {
			
			printSQLException(e);
		}
		return status2;
	}
    public int registerUser(User user) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO registration (fullName, email, mobile, password) values('"+user.getFullName()+"','"
    +user.getEmail()+"',"+user.getMobile()+",PASSWORD('"+user.getPassword()+"'))";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/parking?useSSL=false", "root", "");
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
           
           /* preparedStatement.setString(1, user.getFullName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getMobile());
            preparedStatement.setString(4, user.getPassword());*/
            
        
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
