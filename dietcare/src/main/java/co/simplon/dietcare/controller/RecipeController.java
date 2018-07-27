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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import co.simplon.dietcare.model.Recipe;
import co.simplon.dietcare.service.RecipeService;

/**
 * Controller for Recipe
 * @author Franck ACHARD, Xavier TAGLIARINO, Ahmed BEN ROUAG
 *
 */

@Controller
@RequestMapping("/recipe")
public class RecipeController {
	
	@Inject
	RecipeService recipeService;
	
	/**
	 * Create recipe
	 * @param recipe: recipe to create
	 * @return the id of the created recipe
	 */
	@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Long create(@RequestBody Recipe recipe) {
		System.out.println(recipe);
		return recipeService.save(recipe).getId();
	}
	
	/**
	 * Update recipe
	 * @param recipe: recipe to update
	 * @return recipe updated
	 */
	@RequestMapping(method = RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Recipe update(@RequestBody Recipe recipe) {
		System.out.println(recipe);
		return recipeService.save(recipe);
	}
	
	/**
	 * Find all recipes
	 * @return list of all recipes
	 */
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public List<Recipe> findAll() {
		return recipeService.findAll();
	}
	
	/**
	 * Find recipe by id
	 * @param id: id of recipe to find
	 * @return the recipe
	 */
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Recipe> findbyId(@PathVariable("id") Long id) {
		Optional<Recipe> optionalRecipe = recipeService.findbyId(id);
		/*if(optionalRecipe.isPresent()) { 
			List<Ingredient> ingredients = optionalRecipe.get().getIngredients();
			
			for(int i = 0 ; i < ingredients.size() ; i++) {
				optionalRecipe.get().getIngredients().get(i).getAliment().getCategory();			
			}		
			
		}*/
		
		return optionalRecipe;
	}
}