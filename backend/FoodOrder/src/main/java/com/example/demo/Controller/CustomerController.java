package com.example.demo.Controller;



import com.example.demo.Model.Customer;
import com.example.demo.Service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/customers")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @PostMapping("/register")
    public Customer register(@RequestBody Customer customer) {
        Customer savedCustomer = customerService.registerCustomer(customer);
        return savedCustomer;
    }

    @PostMapping("/login")
    public Customer login(@RequestBody Customer customer) {
        Optional<Customer> loggedInCustomer = customerService.loginCustomer(customer.getEmail(), customer.getPassword());

        if (loggedInCustomer.isPresent()) {
            return loggedInCustomer.get();
        } else {
            throw new RuntimeException("Invalid email or password.");
        }
    }


}

