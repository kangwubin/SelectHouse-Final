package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Test {

	public static void main(String[] args) {
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/houselottery?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull";
			String user = "root";
			String Sqlpassword = "issCollege";
			Connection connection = DriverManager.getConnection(url, user, Sqlpassword);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}

}
