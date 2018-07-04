package co.simplon.dietcare.repository;

import java.util.List;
import java.util.Optional;

import javax.inject.Named;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import co.simplon.dietcare.model.Aliment;

@Named
public interface AlimentRepository extends JpaRepository<Aliment, Long>{
	public List<Aliment> findByName(String name);
	public Optional<Aliment> findById(Long Id);
	public List<Aliment> findByNameLike(@Param("name") String name);
}
