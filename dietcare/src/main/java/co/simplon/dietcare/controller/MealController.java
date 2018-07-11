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

import co.simplon.dietcare.model.Aliment;
import co.simplon.dietcare.model.Meal;
import co.simplon.dietcare.service.MealService;

@Controller
@RequestMapping("/meal")
public class MealController {
	
	@Inject
	MealService mealService;
	
	// meal creation
	@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Long create(@RequestBody Meal meal) {
		System.out.println(meal);
		return mealService.save(meal).getId();
	}
	
	// update meal
	@RequestMapping(method = RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Meal update(@RequestBody Meal meal) {
		return mealService.save(meal);
	}
	
	// find all meals
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public List<Meal> findAll() {
		return mealService.findAll();
	}
	
	// find category by id
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Meal> findbyId(@PathVariable("id") Long id) {
		return mealService.findbyId(id);
	}
	
	// find meal by name
	@RequestMapping(params = "name", method = RequestMethod.GET)
	@ResponseBody
	public List<Meal> findbyName(@RequestParam("name") String name) {
		return mealService.findbyName(name);
	}

	// find meal by name like
	@RequestMapping(params = "namelike", method = RequestMethod.GET)
	@ResponseBody
	public List<Meal> findByNameLike(@RequestParam("namelike") String namelike) {
		return mealService.findByNameLike(namelike);
	}
	
	// delete meal by id
	@RequestMapping(method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteById(@RequestBody Meal meal) {
		mealService.deleteById(meal.getId());
	}
	
}
