package com.example.demo.Repo;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Model.Address;

public interface AddressRepository extends JpaRepository<Address, Long>{
    Address findByUserId(Long userId);
}
