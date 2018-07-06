package co.simplon.dietcare.repository;

import java.util.List;
import java.util.Optional;

import javax.inject.Named;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import co.simplon.dietcare.model.Meal;

@Named
public interface MealRepository extends JpaRepository<Meal, Long> {
	public List<Meal> findByName(String name);
	public Optional<Meal> findById(Long Id);
	public List<Meal> findByNameLike(@Param("name") String name);
}
