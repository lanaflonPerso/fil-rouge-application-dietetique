package co.simplon.dietcare.service;

import java.util.List;
import java.util.Optional;

import javax.inject.Named;

import co.simplon.dietcare.model.Aliment;
import co.simplon.dietcare.model.Category;

@Named
public interface AlimentService {
	// save entity (create or update)
	public Aliment save(Aliment aliment);
	// find all entities
	public List<Aliment> findAll();
	// find an entity by id
	public Optional<Aliment> findbyId(Long id);
	// find an entity by name
	public List<Aliment> findbyName(String name);
	// find an entity by name like
	public List<Aliment> findByNameLike(String name);
	// delete an entity by id
	public void deleteById(Long id);
	//public Category getCategory(Aliment aliment); 

}
