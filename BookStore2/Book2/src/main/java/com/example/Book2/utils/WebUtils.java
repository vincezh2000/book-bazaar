package com.example.Book2.utils;

import com.example.Book2.pojo.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public class WebUtils {

    public static <T> T copyParamToBean(Map value, T bean) {
        /**
         * 把Map中的值注入到对应的JavaBean属性中。
         * @param value
         * @param bean
         */
        try {
            BeanUtils.populate(bean, value);
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }

        return bean;

    }

    /**
     * 将字符串转换成为int类型的数据
     * @param strInt
     * @param defaultValue
     * @return
     */
    public static int parseInt(String strInt,int defaultValue) {
        try {
            return Integer.parseInt(strInt);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return defaultValue;
    }

}
