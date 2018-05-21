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
        System.out.println(resultDate);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        if(date.length() == 10)
        {
            date = date + " 00:00:00";
        }
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

    /**
     * 将日期转换成字符串形式
     * @param date
     * @return
     */
    public static String dateToString(Date date)
    {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = simpleDateFormat.format(date);
        return format;
    }

    public static void main(String[] args)
    {
        stringToDate("2018-05-02 12:12:21");
    }
}
