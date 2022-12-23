package App;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect {

    public Connection getConnection() {
        // Database name, username and password
        String dbaseName = "epmtdb";
        String user = "root";
        String pass = "root";
        Connection connect = null;

        try {
            // Java Driver for connecting MySQL Database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            // port number is 3306
            connect = DriverManager.getConnection("jdbc:mysql://localhost:8889/epmtdb","root","root");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return connect;
    }
}
