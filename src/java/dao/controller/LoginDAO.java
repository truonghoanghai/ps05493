/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.controller;

import bean.controller.NhanVien;
import bean.controller.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author hoanghai
 */
@Repository
public class LoginDAO {

//    @Autowired
//    JdbcTemplate jdbcTemplate;
//
//    public  boolean isValidUser(String username, String password) {
//        boolean retVal;
//        try {
//            String sql = "Select Username,Password "
//                    + " from Users where Username = ? AND Password";
//            int count = jdbcTemplate.queryForInt(sql, new Object[]{username, password});
//
//            if (count == 1) {
//                retVal = true;
//            } else {
//                retVal = false;
//            }
//        } catch (Exception ex) {
//            retVal = false;
//        }
//        return retVal;
//    }
    public static User login(String username, String pass) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://HOANGHAI-PC\\SQLEXPRESS:1433;databaseName=ASM_SOF302";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Users where username='" + username + "' and password='" + pass + "'";

            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);

            while (rs.next()) {

                String user = rs.getString("Username");
                String password = rs.getString("Password");
                String fullname = rs.getString("Fullname");
                User u = new User(user, password, fullname);
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
