package co.simplon.dietcare.service;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;
import javax.inject.Named;

import co.simplon.dietcare.model.Recipe;
import co.simplon.dietcare.repository.RecipeRepository;

@Named
public class RecipeServiceImpl implements RecipeService {
	
	@Inject
	RecipeRepository recipeRepository;
	
	@Override
	public Recipe save(Recipe recipe) {
		return recipeRepository.save(recipe);
	}
	
	@Override
	public List<Recipe> findAll() {
		return recipeRepository.findAll();
	}
	
	@Override
	public Optional<Recipe> findbyId(Long id) {
		return recipeRepository.findById(id);
	}
	
	@Override
	public List<Recipe> findbyName(String name) {
		return recipeRepository.findByName(name);
	}
	
	@Override
	public List<Recipe> findByNameLike(String name) {
		return recipeRepository.findByNameLike(name);
	}
	
	@Override
	public void deleteById(Long id) {
		recipeRepository.deleteById(id);
	}
	
}
