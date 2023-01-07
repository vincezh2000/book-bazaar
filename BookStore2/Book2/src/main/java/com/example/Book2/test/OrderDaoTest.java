package com.example.Book2.test;

import com.example.Book2.dao.OrderDao;
import com.example.Book2.dao.impl.OrderDaoImpl;
import com.example.Book2.pojo.Order;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;

import static org.junit.Assert.*;

public class OrderDaoTest {

    OrderDao orderDao = new OrderDaoImpl();

    @Test
    public void saveOrder() {

        orderDao.saveOrder(new Order("1234567890",new Date(),new BigDecimal(100),0, 1));

    }
}