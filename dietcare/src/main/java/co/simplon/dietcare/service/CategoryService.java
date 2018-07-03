package co.simplon.dietcare.service;

import java.util.List;
import java.util.Optional;

import javax.inject.Named;
import co.simplon.dietcare.model.Category;

@Named
public interface CategoryService {
	public Category saveCategory(Category category);
	public List<Category> getAll();
	public Optional<Category> findbyId(Long id);
	public List<Category> findbyName(String name);
	public List<Category> findByNameLike(String name);

}
