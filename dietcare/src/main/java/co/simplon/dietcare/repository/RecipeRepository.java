package co.simplon.dietcare.repository;

import java.util.List;
import java.util.Optional;

import javax.inject.Named;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import co.simplon.dietcare.model.Recipe;

@Named
public interface RecipeRepository extends JpaRepository<Recipe, Long> {
	public List<Recipe> findByName(String name);
	public Optional<Recipe> findById(Long Id);
	public List<Recipe> findByNameLike(@Param("name") String name);
}
