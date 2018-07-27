package co.simplon.dietcare.controller;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import co.simplon.dietcare.model.Category;
import co.simplon.dietcare.service.CategoryService;

/**
 * Controller for Category
 * @author Franck ACHARD, Xavier TAGLIARINO, Ahmed BEN ROUAG
 *
 */

@RestController
@RequestMapping("/aliment/category")
public class CategoryController {
	
	@Inject
	CategoryService categoryService;
	
	/**
	 * Find all categories
	 * @return list of all categories
	 */
	@RequestMapping(method = RequestMethod.GET)
	public List<Category> findAll() {
		return categoryService.findAll();
	}
	
	/**
	 * Create category
	 * @param cat: category to create
	 * @return the id of the created category
	 */
	@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Long create(@RequestBody Category cat) {
		return categoryService.save(cat).getId();
	}
	
	/**
	 * Update category
	 * @param cat: category to update
	 * @return category updated
	 */
	@RequestMapping(method = RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Category update(@RequestBody Category cat) {
		return categoryService.save(cat);
	}
	
	
	/**
	 * Find category by id
	 * @param id: id of category to find
	 * @return the category
	 */	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Category> findbyId(@PathVariable("id") Long id) {
		return categoryService.findbyId(id);
	}
}
