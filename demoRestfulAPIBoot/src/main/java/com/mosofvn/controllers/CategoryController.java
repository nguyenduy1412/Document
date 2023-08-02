package com.mosofvn.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mosofvn.models.Category;
import com.mosofvn.services.CategoryService;

@RestController
//@CrossOrigin("*")
// * là tất cả các mạng đều chui vào đc
// trong "" thì thêm các địa chỉ
@RequestMapping("/api/v1/category")
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	@GetMapping
	public List<Category> getAllCategory(){
		
		return this.categoryService.getAll();
	}
	@GetMapping("/{id}")
	public Category getById(@PathVariable("id") Integer id) {
		return this.categoryService.findById(id);
	}
	@PostMapping
	public Category create(@RequestBody Category category) {
		return this.categoryService.saveOrUpdate(category);
	}
	@PutMapping("/{id}")
	public Category update(@RequestBody Category category,@PathVariable("id") Integer id) {
		Category categoryOld=this.categoryService.findById(id);
		categoryOld.setCategoryName(category.getCategoryName());
		categoryOld.setCategoryStatus(category.getCategoryStatus());
		return this.categoryService.saveOrUpdate(category);
	}
	@DeleteMapping("/{id}")
	public void delete(@PathVariable("id") Integer id) {
		this.categoryService.delete(id);
	}
}
