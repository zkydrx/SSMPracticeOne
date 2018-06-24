package com.iot.learnssm.firstssm.service;

import com.iot.learnssm.firstssm.po.Orderdetail;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Author: zky
 * Date: 2018-06-25
 * Time: 01:44:41
 * Description:
 */
@Service
public interface OrderService
{
    int delete(Integer id);
    List<Orderdetail> selectOrderDetails(Integer id);
}
