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
import co.simplon.dietcare.model.Ingredient;
import co.simplon.dietcare.model.Recipe;
import co.simplon.dietcare.service.RecipeService;

@Controller
@RequestMapping("/recipe")
public class RecipeController {
	
	@Inject
	RecipeService recipeService;
	
	// recipe creation
	@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Long create(@RequestBody Recipe recipe) {
		return recipeService.save(recipe).getId();
	}
	
	// update recipe
	@RequestMapping(method = RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Recipe update(@RequestBody Recipe recipe) {
		return recipeService.save(recipe);
	}
	
	// find all recipes
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public List<Recipe> findAll() {
		return recipeService.findAll();
	}
	
	// find recipe by id
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Recipe> findbyId(@PathVariable("id") Long id) {
		Optional<Recipe> optionalRecipe = recipeService.findbyId(id);
		if(optionalRecipe.isPresent()) { 
			List<Ingredient> ingredients = optionalRecipe.get().getIngredients();
			
			for(int i = 0 ; i < ingredients.size() ; i++) {
				Aliment aliment = optionalRecipe.get().getIngredients().get(i).getAliment();
				System.out.println(aliment.getName());
			}
			
			
		}
		
		return optionalRecipe;
	}
}