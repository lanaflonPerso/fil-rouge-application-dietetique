package co.simplon.dietcare.service;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;
import javax.inject.Named;

import co.simplon.dietcare.model.Moment;
import co.simplon.dietcare.repository.MomentRepository;

@Named
public class MomentServiceImpl implements MomentService {
	
	@Inject
	MomentRepository momentRepository;
	
	@Override
	public Moment save(Moment aliment) {
		return momentRepository.save(aliment);
//		return aliment;
	}
	
	@Override
	public List<Moment> findAll() {
		return momentRepository.findAll();
	}
	
	@Override
	public Optional<Moment> findbyId(Long id) {
		return momentRepository.findById(id);
	}
	
	@Override
	public List<Moment> findbyName(String name) {
		return momentRepository.findByName(name);
	}
	
	@Override
	public List<Moment> findByNameLike(String name) {
		return momentRepository.findByNameLike("%" + name + "%");
	}

	@Override
	public void deleteById(Long id) {
		momentRepository.deleteById(id);
	}
}
