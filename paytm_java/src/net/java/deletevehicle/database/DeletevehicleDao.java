package net.java.deletevehicle.database;

import java.sql.*;
import net.java.delete.bean.DeleteBean;

public class DeletevehicleDao {

	public int validate(DeleteBean deleteBean) throws ClassNotFoundException {
		int result = 0;

		Class.forName("com.mysql.jdbc.Driver");

		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking?useSSL=false", "root", "");

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM vehicle_category WHERE id= ? ")) {
			preparedStatement.setString(1, deleteBean.getId());
			
			result = preparedStatement.executeUpdate();
			
			

		} catch (SQLException e) {
			
			printSQLException(e);
		}
		return result;
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
