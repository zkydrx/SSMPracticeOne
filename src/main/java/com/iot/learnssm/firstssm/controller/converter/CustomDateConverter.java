package com.iot.learnssm.firstssm.controller.converter;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by brian on 2016/3/5.
 */
public class CustomDateConverter implements Converter<String, Date>
{
    public Date convert(String s)
    {
        //实现 将日期串转成日期类型(格式是yyyy-MM-dd HH:mm:ss)

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        try
        {
            Calendar calendar = Calendar.getInstance();
            int i = calendar.get(Calendar.AM_PM);
            int hour = calendar.get(Calendar.HOUR);
            int minute = calendar.get(Calendar.MINUTE);
            int second = calendar.get(Calendar.SECOND);
            if (i == 1)
            {
                hour += 12;
            }

            if (s.length() == 10)
            {
                s += " " + hour + ":" + minute + ":" + second;
            }
            //转成直接返回
            return simpleDateFormat.parse(s);
        }
        catch (ParseException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("日期格式有误，请重新输入正确的日期格式");
        }
        //如果参数绑定失败返回null
        return null;

    }
}
