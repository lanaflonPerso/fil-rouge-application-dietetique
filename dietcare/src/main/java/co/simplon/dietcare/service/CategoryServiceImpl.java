package co.simplon.dietcare.service;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;
import javax.inject.Named;

import co.simplon.dietcare.model.Category;
import co.simplon.dietcare.repository.CategoryRepository;

@Named
public class CategoryServiceImpl implements CategoryService {

	@Inject
	CategoryRepository categoryRepository;
	
	public Category saveCategory(Category category) {
		categoryRepository.save(category);
		return category;
	}
	
	public List<Category> getAll() {
		return categoryRepository.findAll();
	}
	
	public Optional<Category> findbyId(Long id) {
		return categoryRepository.findById(id);
	}
	
	public List<Category> findbyName(String name) {
		return categoryRepository.findByName(name);
	}
	
	public List<Category> findByNameLike(String name) {
		return categoryRepository.findByNameLike(name);
	}

}
