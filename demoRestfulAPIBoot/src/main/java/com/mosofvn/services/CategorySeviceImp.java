package com.mosofvn.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mosofvn.models.Category;
import com.mosofvn.repository.CategoryResponsitory;

@Service
public class CategorySeviceImp implements CategoryService{
	@Autowired
	private CategoryResponsitory categoryResponsitory;
	@Override
	public List<Category> getAll() {
		// TODO Auto-generated method stub
		return this.categoryResponsitory.findAll();
	}

	@Override
	public Category findById(Integer id) {
		// TODO Auto-generated method stub
		return this.categoryResponsitory.findById(id).get();
	}

	@Override
	public Category saveOrUpdate(Category a) {
		// TODO Auto-generated method stub
		return this.categoryResponsitory.save(a);
	}

	@Override
	public void delete(Integer id) {
		Category cate=this.findById(id);
		this.categoryResponsitory.delete(cate);
		
	}

}