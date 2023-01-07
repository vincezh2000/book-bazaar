package com.example.Book2.service;

import com.example.Book2.pojo.Cart;

public interface OrderService {
    public String createOrder(Cart cart,Integer userId);
}
