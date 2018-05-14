package com.iot.learnssm.firstssm.utils;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * Author: zky
 * Date: 2018-05-14
 * Time: 16:49:33
 * Description:
 * Date utils
 */
public class DateUtils
{
    /**
     * Make the string to date.
     * @param date
     * @return
     */
    public static Date stringToDate(String date)
    {
        Date resultDate=new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try
        {
            resultDate = simpleDateFormat.parse(date);
        }
        catch (ParseException e)
        {
            System.out.println("日期格式有误，请重新输入正确的日期格式");
            e.printStackTrace();
        }

        return resultDate;
    }
}
