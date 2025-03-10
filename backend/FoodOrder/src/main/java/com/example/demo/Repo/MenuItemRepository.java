package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Model.RestaurantsMenu;

@Repository
public interface MenuItemRepository extends JpaRepository<RestaurantsMenu, Long>{
	List<RestaurantsMenu> findByAdminId(Long adminId);

}
