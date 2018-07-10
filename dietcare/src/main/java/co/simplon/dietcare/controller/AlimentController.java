package co.simplon.dietcare.controller;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import co.simplon.dietcare.model.Aliment;
import co.simplon.dietcare.model.Category;
import co.simplon.dietcare.service.AlimentService;

@Controller
@RequestMapping("/aliment")
public class AlimentController {
	
	@Inject
	AlimentService alimentService;
	
	// find all categories
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public List<Aliment> findAll() {
		return alimentService.findAll();
	}
	
	
	// aliment creation
	@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Long create(@RequestBody Aliment alim) {
		return alimentService.save(alim).getId();
	}
	
	// update aliment
	@RequestMapping(method = RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Aliment update(@RequestBody Aliment alim) {
		return alimentService.save(alim);
	}
	
	// find category by id
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Aliment> findbyId(@PathVariable("id") Long id) {
		return alimentService.findbyId(id);
	}
	
	// find aliment by name
	@RequestMapping(params = "name", method = RequestMethod.GET)
	@ResponseBody
	public List<Aliment> findbyName(@RequestParam("name") String name) {
		return alimentService.findbyName(name);
	}

	// find aliment by name like
	@RequestMapping(params = "namelike", method = RequestMethod.GET)
	@ResponseBody
	public List<Aliment> findByNameLike(@RequestParam("namelike") String namelike) {
		return alimentService.findByNameLike(namelike);
	}
	
	// getCategory
	@RequestMapping(value = "/getcategory/{alimenId}", method = RequestMethod.GET)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Category getCategory(@PathVariable("alimenId") Long alimentId) {
		Optional<Aliment> optionalAliment = alimentService.findbyId(alimentId);
		return optionalAliment.isPresent()?optionalAliment.get().getCategory():null;	
	}
	
	// delete aliment by id
	@RequestMapping(method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteById(@RequestBody Aliment alim) {
		alimentService.deleteById(alim.getId());
	}
	
	
}
