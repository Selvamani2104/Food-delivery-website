package com.example.demo.Controller;


import com.example.demo.Model.OrderDetails;
import com.example.demo.Model.OrderProducts;
import com.example.demo.Repo.OrderDetailsRepository;
import com.example.demo.Repo.OrderProductsRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/orders")
public class OrderController {
    @Autowired
    private OrderDetailsRepository orderDetailsRepository;

    @Autowired
    private OrderProductsRepository orderProductsRepository;
    @GetMapping("/user/{userId}")
    public ResponseEntity<List<OrderDetails>> getUserOrders(@PathVariable Long userId) {
        List<OrderDetails> orders = orderDetailsRepository.findByUserId(userId);

        if (orders.isEmpty()) {
            return ResponseEntity.noContent().build();
        }

        return ResponseEntity.ok(orders);
    }
    @PostMapping("/placeOrder")
    public ResponseEntity<String> placeOrders(@RequestBody OrderDetails orderRequest) {
        OrderDetails orderDetails = new OrderDetails();
        orderDetails.setUserId(orderRequest.getUserId());
        orderDetails.setTotalAmount(orderRequest.getTotalAmount());
        orderDetails = orderDetailsRepository.save(orderDetails); // Ensure it's saved first

        for (OrderProducts productRequest : orderRequest.getOrderProducts()) {
            OrderProducts orderProduct = new OrderProducts();
            orderProduct.setOrderDetails(orderDetails); // SET THE FOREIGN KEY
            orderProduct.setProductId(productRequest.getProductId());
            orderProduct.setPrice(productRequest.getPrice());
            orderProduct.setQuantity(productRequest.getQuantity());

            orderProductsRepository.save(orderProduct);
        }

        return ResponseEntity.ok("Order placed successfully");
    }
  


}

