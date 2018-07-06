package co.simplon.dietcare.service;

import java.util.List;
import java.util.Optional;

import javax.inject.Named;

import co.simplon.dietcare.model.Meal;

@Named
public interface MealService {

	// save entity (create or update)
	public Meal save(Meal meal);
	// find all entities
	public List<Meal> findAll();
	// find an entity by id
	public Optional<Meal> findbyId(Long id);
	// find an entity by name
	public List<Meal> findbyName(String name);
	// find an entity by name like
	public List<Meal> findByNameLike(String name);
	// delete an entity by id
	public void deleteById(Long id);
	
}
