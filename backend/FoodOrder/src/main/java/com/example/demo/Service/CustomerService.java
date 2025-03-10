package com.example.demo.Service;


import com.example.demo.Model.Customer;
import com.example.demo.Repo.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Optional;


@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    public Customer registerCustomer(Customer customer) {
        return customerRepository.save(customer);
    }

    public Optional<Customer> loginCustomer(String email, String password) {
        return customerRepository.findByEmail(email)
                .filter(customer -> customer.getPassword().equals(password));
    }
}
