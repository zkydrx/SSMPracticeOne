package com.iot.learnssm.firstssm.utils;

/**
 * Created with IntelliJ IDEA.
 * Author: zky
 * Date: 2018-05-14
 * Time: 16:55:25
 * Description:
 */
public class StringUtils
{
    public static boolean isNullOrEmpty(String str)
    {
        if(str.equals("")||null==str)
        {
            return true;
        }
        return false;
    }

}
