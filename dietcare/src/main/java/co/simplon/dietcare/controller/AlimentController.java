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
import co.simplon.dietcare.service.AlimentService;

/**
 * Controller for Aliment
 * @author Franck ACHARD, Xavier TAGLIARINO, Ahmed BEN ROUAG
 *
 */

@Controller
@RequestMapping("/aliment")
public class AlimentController {
	
	@Inject
	AlimentService alimentService;
	
	/**
	 * Find all aliments
	 * @return list of all aliments
	 */
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public List<Aliment> findAll() {
		return alimentService.findAll();
	}
	
	/**
	 * Create aliment
	 * @param aliment: aliment to create
	 * @return the id of the created aliment
	 */
	@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Long create(@RequestBody Aliment aliment) {
		Long id = alimentService.save(aliment).getId();
		return id;
	}
	
	/**
	 * Update aliment
	 * @param aliment: aliment to update
	 * @return aliment updated
	 */
	@RequestMapping(method = RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Aliment update(@RequestBody Aliment aliment) {
		System.out.println(aliment);
		return alimentService.save(aliment);
	}
	
	/**
	 * Find aliment by id
	 * @param id: id of aliment to find
	 * @return the aliment
	 */
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Aliment> findbyId(@PathVariable("id") Long id) {
		return alimentService.findbyId(id);
	}
	
	/**
	 * Find aliments by exact name
	 * @param name: name of aliments to find
	 * @return list of matching aliments
	 */
	@RequestMapping(params = "name", method = RequestMethod.GET)
	@ResponseBody
	public List<Aliment> findbyName(@RequestParam("name") String name) {
		return alimentService.findbyName(name);
	}

	/**
	 * Find aliments by name like
	 * @param namelike: partial name of aliments to find
	 * @return list of matching aliments
	 */
	@RequestMapping(params = "namelike", method = RequestMethod.GET)
	@ResponseBody
	public List<Aliment> findByNameLike(@RequestParam("namelike") String namelike) {
		return alimentService.findByNameLike(namelike);
	}
		
	/**
	 * Delete aliment by id
	 * @param id: id of aliment to delete
	 */
	@RequestMapping(value = "/{id}",method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteById(@PathVariable("id") Long id) {
		alimentService.deleteById(id);
	}
	
	
}
