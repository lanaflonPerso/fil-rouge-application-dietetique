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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import co.simplon.dietcare.model.Moment;
import co.simplon.dietcare.service.MomentService;

/**
 * Controller for Moment
 * @author Franck ACHARD, Xavier TAGLIARINO, Ahmed BEN ROUAG
 *
 */

@Controller
@RequestMapping("/moment")
public class MomentController {
	
	@Inject
	MomentService momentService;
	
	/**
	 * Create moment
	 * @param moment: moment to create
	 * @return the id of the created moment
	 */
	@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Long create(@RequestBody Moment moment) {
		return momentService.save(moment).getId();
	}
	
	/**
	 * Update moment
	 * @param moment: moment to update
	 * @return moment updated
	 */
	// update category
	@RequestMapping(method = RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Moment update(@RequestBody Moment moment) {
		return momentService.save(moment);
	}
	
	/**
	 * Find all moments
	 * @return list of all moments
	 */
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public List<Moment> findAll() {
		return momentService.findAll();
	}
	
	/**
	 * Find moment by id
	 * @param id: id of moment to find
	 * @return the moment
	 */
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Moment> findbyId(@PathVariable("id") Long id) {
		return momentService.findbyId(id);
	}
	
	/**
	 * Find moments by exact name
	 * @param name: name of moments to find
	 * @return list of matching moments
	 */
	@RequestMapping(value = "/filter/{name}", method = RequestMethod.GET)
	@ResponseBody
	public List<Moment> findbyName(@PathVariable("name") String name) {
		return momentService.findbyName(name);
	}

	/**
	 * Find moments by name like
	 * @param name: partial name of moments to find
	 * @return list of matching moments
	 */
	@RequestMapping(params = "/likefilter/{name}", method = RequestMethod.GET)
	@ResponseBody
	public List<Moment> findByNameLike(@PathVariable("name") String name) {
		return momentService.findByNameLike(name);
	}
	
	/**
	 * Delete moment
	 * @param moment: moment to delete
	 */
	@RequestMapping(method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteById(@RequestBody Moment moment) {
		momentService.deleteById(moment.getId());
	}
}

