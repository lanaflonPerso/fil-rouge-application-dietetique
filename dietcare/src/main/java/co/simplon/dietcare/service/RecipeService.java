package co.simplon.dietcare.service;

import java.util.List;
import java.util.Optional;

import javax.inject.Named;

import co.simplon.dietcare.model.Recipe;

@Named
public interface RecipeService {
	// save entity (create or update)
	public Recipe save(Recipe recipe);
	// find all entities
	public List<Recipe> findAll();
	// find an entity by id
	public Optional<Recipe> findbyId(Long id);
	// find an entity by name
	public List<Recipe> findbyName(String name);
	// find an entity by name like
	public List<Recipe> findByNameLike(String name);
	// delete an entity by id
	public void deleteById(Long id);
	
}
