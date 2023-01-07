package com.example.Book2.test;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class UserServletTest {

    public void login() {
        System.out.println("这是login方法调用");
    }

    public void regist() {
        System.out.println("这是regist方法调用");
    }

    public void updateUser() {
        System.out.println("这是updateUser方法调用");
    }

    public void updateUserPassword() {
        System.out.println("这是updateUserPassword方法调用");
    }

    public static void main(String[] args) {

        String action = "updateUserPassword";

        try {
            Method method = UserServletTest.class.getDeclaredMethod(action);
            method.invoke(new UserServletTest());
        } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
    }

}
