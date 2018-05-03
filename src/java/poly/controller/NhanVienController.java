/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.controller;

import bean.controller.NhanVien;
import bean.controller.PhongBan;
import com.sun.tracing.dtrace.Attributes;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.controller.NhanVienModel;
import model.controller.PhongBanModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author hoanghai
 */
@Controller
@RequestMapping("/nhanvien/")
public class NhanVienController {

    public void load(ModelMap model) {
        PhongBanModel st = new PhongBanModel();
        List<PhongBan> list = new ArrayList<PhongBan>();
        list = st.getNganh();
        model.addAttribute("PhongBan", list);
    }

//    @ModelAttribute("PhongBan")
//    public List<PhongBan> getpb() {
//        PhongBanModel st = new PhongBanModel();
//        List<PhongBan> list = new ArrayList<PhongBan>();
//        list = st.getNganh();
//        return list;
//    }

    @RequestMapping("showall")
    public String showAll(ModelMap model) {

        NhanVienModel st = new NhanVienModel();
        List<NhanVien> list = new ArrayList<NhanVien>();

        list = st.showNhanVien("");

        model.addAttribute("listNhanVien", list);
        this.load(model);
        NhanVien sv = new NhanVien();
        sv = list.get(0);
        model.addAttribute("Staff", sv);
        return "nhanvien";
    }

    @RequestMapping("edit")
    public String edit(HttpServletRequest request, ModelMap model) {
        int id = Integer.parseInt(request.getParameter("txtMaNV"));
        String tenpb = request.getParameter("txtTenNV");
        boolean gioitinh = Boolean.parseBoolean(request.getParameter("txtGioitinh"));
        String ngaysinh = request.getParameter("txtNgaysinh");
        String hinh = request.getParameter("txtHinh");
        String email = request.getParameter("txtEmail");
        String sdt = request.getParameter("txtSDT");
        float luong = Float.parseFloat(request.getParameter("txtLuong"));
        String ghichu = request.getParameter("txtGhichu");
        boolean capdo = Boolean.parseBoolean(request.getParameter("txtCapdo"));
        String mapbid = request.getParameter("txtMaPBid");
        NhanVien sv = new NhanVien(id, tenpb, gioitinh, ngaysinh, hinh, email, sdt, luong, ghichu, capdo, mapbid);
        model.addAttribute("Staff", sv);
        List<NhanVien> list = new ArrayList<NhanVien>();
        list = NhanVienModel.showNhanVien("");
        model.addAttribute("hinh", hinh);
        model.addAttribute("listNhanVien", list);
        return "nhanvien";
    }

    @RequestMapping("delete")
    public String delete(HttpServletRequest request, ModelMap model,
            @ModelAttribute("Staff") NhanVien Staff) {
        String id = request.getParameter("txtMaNV");
        PhongBanModel.delete(id);
        List<NhanVien> list = new ArrayList<NhanVien>();
        list = NhanVienModel.showNhanVien("");
        model.addAttribute("listNhanVien", list);
        return "nhanvien";
    }

    @RequestMapping(params = "btnUpdate")
    public String update(@ModelAttribute("Staff") NhanVien Staff, ModelMap model) {
        NhanVienModel.update(Staff);
        List<NhanVien> list = new ArrayList<NhanVien>();
        list = NhanVienModel.showNhanVien("");
        model.addAttribute("listNhanVien", list);
        return "nhanvien";
    }

    @RequestMapping(params = "btnInsert")
    public String insert(@ModelAttribute("Staff") NhanVien Staff, ModelMap model) {
        NhanVienModel.insert(Staff);
        List<NhanVien> list = new ArrayList<NhanVien>();
        list = NhanVienModel.showNhanVien("");
        model.addAttribute("listNhanVien", list);
        return "nhanvien";
    }

    @RequestMapping(params = "btnSearch")
    public String Search(HttpServletRequest request, ModelMap model,
            @ModelAttribute("Staff") NhanVien Staff) {
        String name = request.getParameter("txtSearch");
        NhanVienModel.showNhanVien(name);

        List<NhanVien> list = new ArrayList<NhanVien>();
        list = NhanVienModel.showNhanVien(name);
        model.addAttribute("listNhanVien", list);
        return "nhanvien";
    }
}
