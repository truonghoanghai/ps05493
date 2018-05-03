/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.controller;

import bean.controller.NhanVien;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hoanghai
 */
public class NhanVienModel {

    public NhanVienModel() {

    }

    public static List<NhanVien> showNhanVien(String tennv) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://HOANGHAI-PC\\SQLEXPRESS:1433;databaseName=ASM_SOF302";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from NhanVien";
            if (tennv.length() > 0) {
                sql += " where TenNV like '%" + tennv + "%'";
            }
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<NhanVien> list = new ArrayList<NhanVien>();
            while (rs.next()) {
                int manv = rs.getInt("MaNV");
                String name = rs.getString("TenNV");
                boolean gioitinh = rs.getBoolean("Gioitinh");
                String ngaysinh = rs.getString("Ngaysinh");
                String hinh = rs.getString("Hinh");
                String email = rs.getString("Email");
                String sdt = rs.getString("SoDT");
                Float luong = rs.getFloat("Luong");
                String ghichu = rs.getString("Ghichu");
                boolean capdo = rs.getBoolean("Capdo");
                String mapbid = rs.getString("PhongBan_MaPB");
                NhanVien nv = new NhanVien(manv, name, gioitinh, ngaysinh, hinh, email, sdt, luong, ghichu, capdo, mapbid);
                list.add(nv);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void delete(String manv) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://HOANGHAI-PC\\SQLEXPRESS:1433;databaseName=ASM_SOF302";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "delete from NhanVien where MaNV=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, manv);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void insert(NhanVien sv) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://HOANGHAI-PC\\SQLEXPRESS:1433;databaseName=ASM_SOF302";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "insert into NhanVien values(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, sv.getTennv());
            stm.setBoolean(2, sv.isGioitinh());
            stm.setString(3, sv.getNgaysinh());
            stm.setString(4, sv.getHinh());
            stm.setString(5, sv.getEmail());
            stm.setString(6, sv.getSdt());
            stm.setFloat(7, sv.getLuong());
            stm.setString(8, sv.getGhichu());
            stm.setBoolean(9, sv.isCapdo());
            stm.setString(10, sv.getMapbid());
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    public static void update(NhanVien sv) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://HOANGHAI-PC\\SQLEXPRESS:1433;databaseName=ASM_SOF302";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "update NhanVien set TenNV=?,Gioitinh=?,Ngaysinh=?,Hinh=?,Email=?,SoDT=?,Luong=?,Ghichu=?,Capdo=?,PhongBan_MaPB where MaNV=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, sv.getTennv());
            stm.setBoolean(2, sv.isGioitinh());
            stm.setString(3, sv.getNgaysinh());
            stm.setString(4, sv.getHinh());
            stm.setString(5, sv.getEmail());
            stm.setString(6, sv.getSdt());
            stm.setFloat(7, sv.getLuong());
            stm.setString(8, sv.getGhichu());
            stm.setBoolean(9, sv.isCapdo());
            stm.setString(10, sv.getMapbid());
            stm.setInt(11, sv.getManv());
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
