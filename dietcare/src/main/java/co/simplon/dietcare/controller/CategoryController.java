package co.simplon.dietcare.controller;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;

import co.simplon.dietcare.service.CategoryService;
import co.simplon.dietcare.model.Category;


@Controller
@RequestMapping("/aliment/category")
public class CategoryController {
	
	@Inject
	CategoryService categoryService;
	
	// category creation
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Long create(@RequestBody Category cat) {
		return categoryService.save(cat).getId();
	}
	
	// update category
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Category update(@RequestBody Category cat) {
		return categoryService.save(cat);
	}
	
	// find all categories
	@RequestMapping(value = "/findall", method = RequestMethod.GET)
	@ResponseBody
	public List<Category> findAll() {
		return categoryService.findAll();
	}
	
	// find category by id
	@RequestMapping(value = "/findbyid", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Category> findbyId(@RequestBody Category cat) {
		return categoryService.findbyId(cat.getId());
	}
	
	// find category by name
	@RequestMapping(value = "/findbyname", method = RequestMethod.GET)
	@ResponseBody
	public List<Category> findbyName(@RequestBody Category cat) {
		return categoryService.findbyName(cat.getName());
	}

	// find category by name like
	@RequestMapping(value = "/findbynamelike", method = RequestMethod.GET)
	@ResponseBody
	public List<Category> findByNameLike(@RequestBody Category cat) {
		return categoryService.findByNameLike(cat.getName());
	}


}
