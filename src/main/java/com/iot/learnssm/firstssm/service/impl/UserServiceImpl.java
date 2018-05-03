package com.iot.learnssm.firstssm.service.impl;

import com.iot.learnssm.firstssm.mapper.UserMapper;
import com.iot.learnssm.firstssm.po.User;
import com.iot.learnssm.firstssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Author: zky
 * Date: 2018-05-02
 * Time: 17:04:05
 * Description:
 */
@Service
public class UserServiceImpl implements UserService
{

    @Autowired
    private UserMapper userMapper;
    /**
     * 查找所有用户
     *
     * @return
     */
    public List<User> findAllUserList()
    {
        List<User> users = userMapper.selectAllUser();
        return users;
    }

    /**
     * 根据用户id查找用户
     *
     * @param id
     * @return
     */
    public User findUserById(Integer id)
    {
        User user = userMapper.selectByPrimaryKey(id);
        return user;
    }

    /**
     * 根据用户名和密码查询用户
     *
     * @param user
     * @return
     */
    public boolean findUserByNameAndPassword(User user)
    {
        return false;
    }

    /**
     * 根据用户ID删除用户
     *
     * @param user
     * @return
     */
    public boolean deleteById(User user)
    {
        return false;
    }

    /**
     * 新增用户
     *
     * @param user
     * @return
     */
    public boolean insertUser(User user)
    {
        return false;
    }

    /**
     * 根据用户ID更新用户信息
     *
     * @param user
     * @return
     */
    public boolean updateUserById(User user)
    {
        int i = userMapper.updateByPrimaryKey(user);
        if(i > 0)
        {
            return true;
        }
        return false;
    }

}
