package com.example.demo.Service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Address;
import com.example.demo.Repo.AddressRepository;

@Service
public class AddressService {

    @Autowired
    private AddressRepository addressRepository;

    public Address saveOrUpdateAddress(Address address) {
        Address existingAddress = addressRepository.findByUserId(address.getUserId());

        if (existingAddress != null) {
        	
            existingAddress.setFullName(address.getFullName());
            existingAddress.setEmail(address.getEmail());
            existingAddress.setMobileNo(address.getMobileNo());
            existingAddress.setFlatNo(address.getFlatNo());
            existingAddress.setStreetName(address.getStreetName());
            existingAddress.setCity(address.getCity());
            existingAddress.setState(address.getState());
            existingAddress.setPincode(address.getPincode());

            return addressRepository.save(existingAddress);
        }

        return addressRepository.save(address);
    }

    public Address getAddressByUserId(Long userId) {
        return addressRepository.findByUserId(userId);
    }
}
