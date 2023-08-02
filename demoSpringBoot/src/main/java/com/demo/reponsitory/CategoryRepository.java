package com.demo.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.entities.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer>{
	
}
