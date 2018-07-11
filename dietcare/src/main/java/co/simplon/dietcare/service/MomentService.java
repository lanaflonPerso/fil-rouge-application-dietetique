package co.simplon.dietcare.service;

import java.util.List;
import java.util.Optional;

import javax.inject.Named;

import co.simplon.dietcare.model.Moment;

@Named
public interface MomentService {
	// save entity (create or update)
	public Moment save(Moment aliment);
	// find all entities
	public List<Moment> findAll();
	// find an entity by id
	public Optional<Moment> findbyId(Long id);
	// find an entity by name
	public List<Moment> findbyName(String name);
	// find an entity by name like
	public List<Moment> findByNameLike(String name);
	// delete an entity by id
	public void deleteById(Long id);
//	// count all entities
//	public long count(); 

}
