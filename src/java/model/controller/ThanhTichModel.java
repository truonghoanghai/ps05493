/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author hoanghai
 */
public class ThanhTichModel {
    public static void addrecord(boolean type, String reason, String Date, String StaffId) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://HOANGHAI-PC\\SQLEXPRESS:1433;databaseName=ASM_SOF302";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "Insert into ThanhTich values(?,?,CAST(? AS DATE),?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setBoolean(1, type);
            stm.setString(2, reason);
            stm.setString(3, Date);
            stm.setString(4, StaffId);
            stm.execute();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
   public static int getbonuscore(String staffid) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://HOANGHAI-PC\\SQLEXPRESS:1433;databaseName=ASM_SOF302";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "Exec TinhDiem  " + staffid + "";
            Statement stm = con.createStatement();
            ResultSet rss = stm.executeQuery(sql);
            if (rss.next()) {
                return rss.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
   
   public static String getemailwithid(String staffid) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://HOANGHAI-PC\\SQLEXPRESS:1433;databaseName=ASM_SOF302";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "Select Email from NhanVien where MaNV like '" + staffid + "'";
            Statement stm = con.createStatement();
            ResultSet rss = stm.executeQuery(sql);
            if (rss.next()) {
                return rss.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "haithps05493@fpt.edu.vn";
    }
}
