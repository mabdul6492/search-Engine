package com.primary;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    static Connection connection = null;

    public static Connection getConnection(){
        if(connection != null) return connection;

        String user = "root";
        String pwd = "Mabdul@6492";
        String db = "searchengineapp";

        return getConnection(user, pwd, db);
    }

    private static Connection getConnection(String user, String pwd, String db){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = String.format("jdbc:mysql://localhost/%s?user=%s&password=%s", db, user, pwd);
            connection = DriverManager.getConnection(url);
        } catch (ClassNotFoundException | SQLException exception) {
            exception.printStackTrace();
        }

        return connection;
    }
}
