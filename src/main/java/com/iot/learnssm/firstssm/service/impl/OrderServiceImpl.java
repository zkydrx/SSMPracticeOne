package com.iot.learnssm.firstssm.service.impl;

import com.iot.learnssm.firstssm.mapper.OrderdetailMapper;
import com.iot.learnssm.firstssm.po.Orderdetail;
import com.iot.learnssm.firstssm.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Author: zky
 * Date: 2018-06-25
 * Time: 01:47:08
 * Description:
 */
@Service
public class OrderServiceImpl implements OrderService
{

    @Autowired
    private OrderdetailMapper orderdetailMapper;
    public int delete(Integer id)
    {
        return orderdetailMapper.deleteByPrimaryKey(id);
    }

    public List<Orderdetail> selectOrderDetails(Integer id)
    {
        return orderdetailMapper.selectById(id);
    }
}
