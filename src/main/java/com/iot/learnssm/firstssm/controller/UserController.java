package com.iot.learnssm.firstssm.controller;

import com.iot.learnssm.firstssm.po.User;
import com.iot.learnssm.firstssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Author: zky
 * Date: 2018-05-02
 * Time: 15:51:49
 * Description:
 */
@Controller
@RequestMapping("/user")
public class UserController
{
    @Autowired
    private UserService userService;

    @RequestMapping("/queryUser")
    public ModelAndView queryUser(HttpServletRequest request)
    {
        List<User> userList = userService.findAllUserList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userList",userList);

        modelAndView.setViewName("items/userList");
        return modelAndView;
    }

    @RequestMapping("/editUser")
    public ModelAndView editUser(Model model, @RequestParam(value = "id",required = true) Integer id)
    {
        User user = userService.findUserById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("user",user);
        modelAndView.setViewName("items/editUser");
        return modelAndView;
    }

    public ModelAndView update(@ModelAttribute("user") User user,HttpServletRequest request)
    {
        return null;
    }

}
