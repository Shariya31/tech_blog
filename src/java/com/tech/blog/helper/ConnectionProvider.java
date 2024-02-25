package com.tech.blog.helper;

import java.sql.*;

public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() {
        try {
           if(con==null){
                //load driver class
            Class.forName("com.mysql.cj.jdbc.Driver");
//            create a connection
            String url= "jdbc:mysql://localhost:3306/techblog";
            String user = "root";
            String password = "shariya";
            con = DriverManager.getConnection(url, user, password);
           }


        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}
