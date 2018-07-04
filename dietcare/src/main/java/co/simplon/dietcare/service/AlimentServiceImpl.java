package co.simplon.dietcare.service;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;
import javax.inject.Named;

import co.simplon.dietcare.model.Aliment;
import co.simplon.dietcare.repository.AlimentRepository;

@Named
public class AlimentServiceImpl implements AlimentService {
	
	@Inject
	AlimentRepository alimentRepository;
	
	@Override
	public Aliment save(Aliment aliment) {
		alimentRepository.save(aliment);
		return aliment;
	}
	
	@Override
	public List<Aliment> findAll() {
		return alimentRepository.findAll();
	}
	
	@Override
	public Optional<Aliment> findbyId(Long id) {
		return alimentRepository.findById(id);
	}
	
	@Override
	public List<Aliment> findbyName(String name) {
		return alimentRepository.findByName(name);
	}
	
	@Override
	public List<Aliment> findByNameLike(String name) {
		return alimentRepository.findByNameLike("%" + name + "%");
	}

	@Override
	public void deleteById(Long id) {
		alimentRepository.deleteById(id);
	}
	
	@Override
	public long count() {
		return alimentRepository.findAll().size();
	}
}
