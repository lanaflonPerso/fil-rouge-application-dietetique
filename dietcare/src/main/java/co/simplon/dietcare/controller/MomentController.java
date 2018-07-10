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

import co.simplon.dietcare.model.Moment;
import co.simplon.dietcare.service.MomentService;


@Controller
@RequestMapping("/moment")
public class MomentController {
	
	@Inject
	MomentService momentService;
	
	// category creation
	@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Long create(@RequestBody Moment moment) {
		return momentService.save(moment).getId();
	}
	
	// update category
	@RequestMapping(method = RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Moment update(@RequestBody Moment moment) {
		return momentService.save(moment);
	}
	
	// find all categories
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public List<Moment> findAll() {
		return momentService.findAll();
	}
	
	// find category by id
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Moment> findbyId(@PathVariable("id") Long id) {
		return momentService.findbyId(id);
	}
	
	// find category by name
	@RequestMapping(value = "/filter/{name}", method = RequestMethod.GET)
	@ResponseBody
	public List<Moment> findbyName(@PathVariable("name") String name) {
		return momentService.findbyName(name);
	}

	// find category by name like
	@RequestMapping(params = "/likefilter/{name}", method = RequestMethod.GET)
	@ResponseBody
	public List<Moment> findByNameLike(@PathVariable("name") String name) {
		return momentService.findByNameLike(name);
	}
	
	// delete category by id
	@RequestMapping(method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteById(@RequestBody Moment moment) {
		momentService.deleteById(moment.getId());
	}
}

