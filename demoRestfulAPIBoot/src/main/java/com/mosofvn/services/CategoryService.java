package com.mosofvn.services;

import java.util.List;

import com.mosofvn.models.Category;

public interface CategoryService {
	List<Category> getAll();
	Category findById(Integer id);
	Category saveOrUpdate(Category a);
	void delete(Integer id);
}
