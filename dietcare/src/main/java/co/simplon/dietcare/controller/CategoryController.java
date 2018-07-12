package co.simplon.dietcare.controller;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import co.simplon.dietcare.model.Category;
import co.simplon.dietcare.service.CategoryService;


@RestController
@RequestMapping("/aliment/category")
public class CategoryController {
	
	@Inject
	CategoryService categoryService;
	
	// find all categories
	@RequestMapping(method = RequestMethod.GET)
	//@ResponseBody
	public List<Category> findAll() {
		return categoryService.findAll();
	}
	
	// category creation
	@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Long create(@RequestBody Category cat) {
		return categoryService.save(cat).getId();
	}
	
	// update category
	@RequestMapping(method = RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Category update(@RequestBody Category cat) {
		return categoryService.save(cat);
	}
	
	
	
	// find category by id
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Category> findbyId(@PathVariable("id") Long id) {
		return categoryService.findbyId(id);
	}
}
