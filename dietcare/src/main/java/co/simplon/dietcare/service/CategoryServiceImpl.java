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
	
	@Override
	public Category save(Category category) {
		return categoryRepository.save(category);
//		return category;
	}
	
	@Override
	public List<Category> findAll() {
		return categoryRepository.findAll();
	}
	
	@Override
	public Optional<Category> findbyId(Long id) {
		return categoryRepository.findById(id);
	}
	
	@Override
	public List<Category> findbyName(String name) {
		return categoryRepository.findByName(name);
	}
	
	@Override
	public List<Category> findByNameLike(String name) {
		return categoryRepository.findByNameLike("%" + name + "%");
	}

	@Override
	public void deleteById(Long id) {
		categoryRepository.deleteById(id);
	}
	
}
