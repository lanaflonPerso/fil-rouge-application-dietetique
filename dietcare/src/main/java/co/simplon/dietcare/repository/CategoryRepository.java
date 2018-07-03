package co.simplon.dietcare.repository;

import java.util.List;
import java.util.Optional;

import javax.inject.Named;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import co.simplon.dietcare.model.Category;

@Named
public interface CategoryRepository extends JpaRepository<Category, Long> {
	public List<Category> findByName(String name);
	public Optional<Category> findById(Long Id);
	public List<Category> findByNameLike(@Param("name") String name);
}

