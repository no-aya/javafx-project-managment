package App.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingletonConnexionDB {

    public Connection getConnection() {
        Connection connect = null;

        try {
            // Java Driver for connecting MySQL Database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            // port number is 3306
            connect = DriverManager.getConnection("jdbc:mysql://localhost/epmtdb","root","");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return connect;
    }
}
