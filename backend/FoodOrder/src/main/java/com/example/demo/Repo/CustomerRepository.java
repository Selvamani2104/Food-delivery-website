package com.example.demo.Repo;


import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.Model.Customer;
import java.util.Optional;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
    Optional<Customer> findByEmail(String email);
}

