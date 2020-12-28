package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnectionManager {

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "admin");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

}
