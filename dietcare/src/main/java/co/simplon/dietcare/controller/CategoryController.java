package co.simplon.dietcare.controller;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;
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
	
	// update category by id
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Category update(@PathVariable("id") Long id) {
		// find category

		// set new name
		
		// save category
		
		return null;
	}
	
	// find all categories
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public List<Category> findAll() {
		return categoryService.findAll();
	}
	
	// find category by id
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Category> findbyId(@PathVariable("id") Long id) {
		return categoryService.findbyId(id);
	}
	
	// find category by name
	@RequestMapping(value = "/{name}", method = RequestMethod.GET)
	@ResponseBody
	public List<Category> findbyName(@PathVariable("name") String name) {
		return categoryService.findbyName(name);
	}

	// find category by name like
	@RequestMapping(value = "/{name}", method = RequestMethod.GET)
	@ResponseBody
	public List<Category> findByNameLike(@PathVariable("name") String name) {
		return categoryService.findByNameLike(name);
	}
}
