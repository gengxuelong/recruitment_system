package com.nwpn.controller;

import com.nwpn.pojo.User;
import com.nwpn.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author GengXuelong
 * @version 1.0
 * @Mail 3349495429@qq.com
 * @Date 2022/11/28
 * @ClassName LoginController
 * @Description:
 */
@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;
    @RequestMapping("/login")
    public String login(){
        return "redirect:login.jsp";
    }

    @RequestMapping("/login.do")
    public String login2(String email, String password, Model model){
        System.out.println(email+"::"+password);
        User login = loginService.login(email, password);
        if(login==null){
            model.addAttribute("msg","用户名或密码错误");
            return "error";
        }
        return "/main";
    }
}
