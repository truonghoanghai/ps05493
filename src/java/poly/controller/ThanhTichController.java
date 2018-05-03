/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.controller;

import bean.controller.Mailer;
import bean.controller.NhanVien;
import bean.controller.PhongBan;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.controller.NhanVienModel;
import model.controller.PhongBanModel;
import model.controller.ThanhTichModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author hoanghai
 */
public class ThanhTichController {

    @Autowired
    Mailer mailer2;

    @RequestMapping("NhanVien")
    public String staff(HttpServletRequest request, ModelMap model) {
        List<NhanVien> ds = new ArrayList<NhanVien>();
        ds = NhanVienModel.showNhanVien("");
        model.addAttribute("listNhanVien", ds);
        List<PhongBan> dss = new ArrayList<PhongBan>();
        dss = PhongBanModel.showPhongBan("");
        model.addAttribute("listPhongBan", dss);
        return "NhanVien";
    } 
    
    @RequestMapping("addrecord")
    public String addrecord(ModelMap model, HttpServletRequest request, @RequestParam("staffid") String staffid, @RequestParam("reason") String reason, @RequestParam("type") String type) {
        try {
            String date = new SimpleDateFormat("MM-dd-yyyy").format(new Date());
            boolean typerate = true;
            if (type.equals("Good")) {
                typerate = true;
            } else {
                typerate = false;
            }
            ThanhTichModel.addrecord(typerate, reason, date, staffid);
            if (typerate) {
                mailer2.send("haithps05493@fpt.edu.vn", ThanhTichModel.getemailwithid(staffid), "Praise", "You had a good thing in company :<b>" + reason + "</b>, <br> I give you 1 bonus, hope you continue to promote in the Future <br> Your score bonus now is: <b>" + ThanhTichModel.getbonuscore(staffid) + "</b>");
            } else {
                mailer2.send("haithps05493@fpt.edu.vn", ThanhTichModel.getemailwithid(staffid), "Complain", "You had minus 1 bonus score in the Company because :<b> " + reason + "</b><br> Hope you do not commit this mistake again <br> Your score bonus now is: <b>" + ThanhTichModel.getbonuscore(staffid) + "</b>");
            }
            List<NhanVien> ds = new ArrayList<NhanVien>();
            ds = NhanVienModel.showNhanVien("");
            model.addAttribute("listNhanVien", ds);
            List<PhongBan> dss = new ArrayList<PhongBan>();
            dss = PhongBanModel.showPhongBan("");
            model.addAttribute("listPhongBan", dss);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "NhanVien";
    }
}
