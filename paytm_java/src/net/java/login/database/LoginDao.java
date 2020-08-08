package net.java.login.database;

import java.sql.*;
import net.java.login.bean.LoginBean;

public class LoginDao {

	public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
		boolean status = false;

		Class.forName("com.mysql.jdbc.Driver");

		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking?useSSL=false", "root", "");

				
			PreparedStatement preparedStatement = connection.prepareStatement("select * from registration where email = '"+loginBean.getEmail()+"' AND password = PASSWORD('"+loginBean.getPassword()+"')")) {
			//preparedStatement.setString(1, loginBean.getEmail());
			//preparedStatement.setString(2, loginBean.getPassword());

			//System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();
			if(status) {
				
				String val = rs.getString("fullName");
				loginBean.setfullName(val);
				
			}
			

		} catch (SQLException e) {
			
			printSQLException(e);
		}
		return status;
	}
	public boolean validate2(LoginBean loginBean) throws ClassNotFoundException {
		boolean status2 = false;

		Class.forName("com.mysql.jdbc.Driver");

		try (Connection connection2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking?useSSL=false", "root", "");

				
			PreparedStatement preparedStatement2 = connection2.prepareStatement("select * from admin where email = ? and password = ? ")) {
			preparedStatement2.setString(1, loginBean.getEmail());
			preparedStatement2.setString(2, loginBean.getPassword());

			//System.out.println(preparedStatement);
			ResultSet rs2 = preparedStatement2.executeQuery();
			status2 = rs2.next();
			if(status2) {
				
				String val2 = rs2.getString("fullName");
				loginBean.setfullName(val2);
				
			}
			

		} catch (SQLException e) {
			
			printSQLException(e);
		}
		return status2;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
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