package co.simplon.dietcare.service;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;
import javax.inject.Named;

import co.simplon.dietcare.model.Meal;
import co.simplon.dietcare.repository.MealRepository;

@Named
public class MealServiceImpl implements MealService {

	@Inject
	MealRepository mealRepository;
	
	@Override
	public Meal save(Meal meal) {
		return mealRepository.save(meal);
	}
	
	@Override
	public List<Meal> findAll() {
		return mealRepository.findAll();
	}
	
	@Override
	public Optional<Meal> findbyId(Long id) {
		return mealRepository.findById(id);
	}
	
	@Override
	public List<Meal> findbyName(String name) {
		return mealRepository.findByName(name);
	}
	
	@Override
	public List<Meal> findByNameLike(String name) {
		return mealRepository.findByNameLike("%" + name + "%");
	}
	
	@Override
	public void deleteById(Long id) {
		mealRepository.deleteById(id);
	}
	
}
