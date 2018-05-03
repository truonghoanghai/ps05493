/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.controller;

import bean.controller.LoginBean;
import bean.controller.User;
import dao.controller.LoginDAO;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * @author hoanghai
 */
@Controller
public class LoginController {

//    @RequestMapping(value = "/view", method = RequestMethod.GET)
//    public ModelAndView View(HttpServletRequest request) throws IOException {
//
//        ModelAndView modelAndView = new ModelAndView("loginpage.jsp");
//        LoginBean loginbean = new LoginBean();
//        modelAndView.addObject("loginBean", loginbean);
//
//        return modelAndView;
//    }
//    @Autowired
//    LoginDAO dao;
//
//    @RequestMapping(value = "/login", method = RequestMethod.POST)
//    public ModelAndView Login(HttpServletRequest request, @ModelAttribute("loginBean") LoginBean loginBean) {
//        boolean result;
//        ModelAndView modelAndView = null;
//        String username = loginBean.getUsername();
//        String password = loginBean.getPassword();
//
//        if (loginBean != null && username != null && password != null) {
//            result = dao.isValidUser(username, password);
//            if (result == true) {
//                modelAndView = new ModelAndView("index.jsp");
//            } else {
//                modelAndView = new ModelAndView("loginpage.jsp");
//                modelAndView.addObject("msg", "Wrong user name or password");
//            }
//        } else {
//            modelAndView = new ModelAndView("loginpage.jsp");
//            modelAndView.addObject("msg", "Error occurred while processing");
//        }
//        return modelAndView;
//    }
//
    @RequestMapping("loginpage")
    public String login(HttpServletRequest request, ModelMap model) {
        String username = request.getParameter("txtUsername");
        String pass = request.getParameter("txtPassword");
//        if (username.equals("") && pass.equals("")) {
//            model.addAttribute("mesage", "User và mật khẩu không được để trống");
//            return "loginpage";
//        } else {
        User u = new User();
        LoginDAO logindao = new LoginDAO();
        u = logindao.login(username, pass);
        if (u != null) {
            model.addAttribute("user", u);
            return "index";
        } else {
            
            return "loginpage";
        }
//        }

    }
    
}
