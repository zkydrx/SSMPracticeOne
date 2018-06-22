package com.iot.learnssm.firstssm.controller;

import com.iot.learnssm.firstssm.po.User;
import com.iot.learnssm.firstssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by brian on 2016/3/8.
 */
@Controller
public class LoginController
{

    @Autowired
    private UserService userService;

    // 登陆
    @RequestMapping("/login")
    public String login(Model model, HttpSession session, String username, String password) throws Exception
    {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        // 调用service进行用户身份验证
        int userByNameAndPassword = userService.findUserByNameAndPassword(user);

        if (userByNameAndPassword > 0)
        {
            //在session中保存用户身份信息
            session.setAttribute("usernameForCurrentLogin", username);
            session.setAttribute("passwordForCurrentUser", password);
            model.addAttribute("message","登陆成功");
            return "redirect:/items/queryItems.action";
        }
        else
        {
            model.addAttribute("message","用户名或者密码错误，请重试");
            return "login";
        }
    }

    // 退出
    @RequestMapping("/logout")
    public String logout(HttpSession session) throws Exception
    {

        // 清除session
        session.invalidate();

        // 重定向到登陆页面
        return "login";
    }
}
