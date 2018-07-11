package co.simplon.dietcare.repository;

import java.util.List;
import java.util.Optional;

import javax.inject.Named;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import co.simplon.dietcare.model.Moment;

@Named
public interface MomentRepository extends JpaRepository<Moment, Long> {
	public List<Moment> findByName(String name);
	public Optional<Moment> findById(Long Id);
	public List<Moment> findByNameLike(@Param("name") String name);
}

