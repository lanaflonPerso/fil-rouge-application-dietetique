package co.simplon.dietcare.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import co.simplon.dietcare.service.CategoryService;
import co.simplon.dietcare.model.Category;


@Controller
@RequestMapping("aliment/category")
public class CategoryController {
	
	@Inject
	CategoryService categoryService;
	
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public List<Category> findAll() {
		List<Category> categories = new ArrayList<Category>();

		Category cat1 = new Category("Catégorie 1");
		Category cat2 = new Category("Catégorie 2");
		categories.add(cat1);
		categories.add(cat2);

		return categories;
	}
}
