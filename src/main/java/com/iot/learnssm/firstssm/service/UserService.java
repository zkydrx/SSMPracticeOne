package com.iot.learnssm.firstssm.service;

import com.iot.learnssm.firstssm.po.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Author: zky
 * Date: 2018-05-02
 * Time: 15:16:57
 * Description:
 */
@Service
public interface UserService
{
    /**
     * 查找所有用户
     * @return
     */
    List<User> findAllUserList();

    /**
     * 根据用户id查找用户
     * @param id
     * @return
     */
    User findUserById(Integer id);

    /**
     * 根据用户名和密码查询用户
     * @param user
     * @return
     */
    int findUserByNameAndPassword(User user);

    /**
     * 根据用户ID删除用户
     * @param user
     * @return
     */
    boolean deleteById(User user);

    /**
     * 新增用户
     * @param user
     * @return
     */
    int insertUser(User user);


    /**
     * 新增用户判断所填字符是否为空
     * @param user
     * @return
     */
    int insertSelective(User user);
    /**
     * 根据用户ID更新用户信息
     * @param user
     * @return
     */
    boolean updateUserById(User user);
}
