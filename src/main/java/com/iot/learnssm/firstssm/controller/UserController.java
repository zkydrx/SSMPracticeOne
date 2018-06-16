package com.iot.learnssm.firstssm.controller;

import com.iot.learnssm.firstssm.po.User;
import com.iot.learnssm.firstssm.service.UserService;
import com.iot.learnssm.firstssm.utils.DateUtils;
import com.iot.learnssm.firstssm.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
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

    /**
     * 注册用户
     * @param request
     * @return
     */
    @RequestMapping(value = "/addUser",method = RequestMethod.POST)
    public ModelAndView addUser(HttpServletRequest request)
    {
        ModelAndView modelAndView =new ModelAndView();
        String name = request.getParameter("name");
        if(StringUtils.isNullOrEmpty(name))
        {
            modelAndView.addObject(name);
        }

        String password = request.getParameter("password");
        if(StringUtils.isNullOrEmpty(password))
        {
            modelAndView.addObject(password);
        }
        String birthday = request.getParameter("birthday");
        if(StringUtils.isNullOrEmpty(birthday))
        {
            modelAndView.addObject(birthday);
        }
        Date date = DateUtils.stringToDate(birthday);
        String sex = request.getParameter("sex");
        if(StringUtils.isNullOrEmpty(sex))
        {
            modelAndView.addObject(sex);
        }
        String address = request.getParameter("address");

        if(StringUtils.isNullOrEmpty(address))
        {
            modelAndView.addObject(address);
        }


        User user = new User();
        user.setUsername(name);
        user.setPassword(password);
        user.setBirthday(date);
        user.setSex(sex);
        user.setAddress(address);

        /**
         * 检测注册用户是否可用
         */
        int userNumber = userService.findUserByNameAndPassword(user);

        if(userNumber > 0)
        {
            modelAndView.addObject("message","用户已存在，请使用一个新用户");
            modelAndView.setViewName("error");
            return modelAndView;
        }

        int b = userService.insertSelective(user);

        if(b > 0)
        {
            modelAndView.addObject("message","注册成功，请");
            modelAndView.setViewName("success");
            return modelAndView;
        }

        return modelAndView;
    }

    /**
     * 跳转到登录页面
     * @param request
     * @return
     */
    @RequestMapping(value = "/goLoginView",method = RequestMethod.POST)
    public ModelAndView goLoginView(HttpServletRequest request)
    {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    /**
     * 查询已注册的用户
     * @param request
     * @return
     */
    @RequestMapping("/queryUser")
    public ModelAndView queryUser(HttpServletRequest request)
    {
        List<User> userList = userService.findAllUserList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userList",userList);
        String username = (String) request.getSession().getAttribute("username");
        String password = (String) request.getSession().getAttribute("password");

        modelAndView.addObject("username",username);
        modelAndView.addObject("passowrd",password);

        modelAndView.setViewName("items/userList");
        return modelAndView;
    }

    /**
     * 跳转到编辑页面，并且把选中的数据在新页面展示
     * @param model
     * @param id
     * @return
     */
    @RequestMapping(value = "/editUser",method = RequestMethod.POST)
    public ModelAndView editUser(Model model, @RequestParam(value = "id",required = true) Integer id)
    {

        User user = userService.findUserById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("user",user);
        modelAndView.setViewName("items/editUser");
        return modelAndView;
    }


    /**
     * 更新完成以后进行再查询，以展示修改后的数据
     * @param request
     * @return
     */
    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public String update(@ModelAttribute("user") User user, HttpServletRequest request)
    {
//        User user = new User();
//        String idTemp = request.getParameter("id");
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        String birthday = request.getParameter("birthday");
//        String sex = request.getParameter("sex");
//        String address = request.getParameter("address");
//
//        int id = Integer.parseInt(idTemp);
//
//        Date date = DateUtils.stringToDate(birthday);
//
//        user.setId(id);
//        user.setUsername(username);
//        user.setPassword(password);
//        user.setBirthday(date);
//        user.setAddress(address);
//        user.setSex(sex);


        boolean b = userService.updateUserById(user);
        return "redirect:queryUser";
    }


    /**
     * 删除用户
     * @param id
     * @param request
     * @return
     */
    @RequestMapping(value = "/deleteUser",method = RequestMethod.POST)
    public String deleteUser(@RequestParam("id") int id,HttpServletRequest request)
    {
        User user = new User();
        user.setId(id);
        userService.deleteById(user);
        return "redirect:queryUser";
    }


}
