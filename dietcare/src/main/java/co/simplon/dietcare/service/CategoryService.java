package co.simplon.dietcare.service;

import java.util.List;
import java.util.Optional;

import javax.inject.Named;
import co.simplon.dietcare.model.Category;

@Named
public interface CategoryService {
	// save entity (create or update)
	public Category save(Category category);
	// find all entities
	public List<Category> findAll();
	// find an entity by id
	public Optional<Category> findbyId(Long id);
	// find an entity by name
	public List<Category> findbyName(String name);
	// find an entity by name like
	public List<Category> findByNameLike(String name);
	// delete an entity by id
	public void deleteById(Long id);
	// count all entities
	public long count(); 

}
