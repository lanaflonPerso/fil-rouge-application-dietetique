package co.simplon.dietcare.controller;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import javax.inject.Inject;

import org.json.JSONObject;
import org.springframework.http.HttpEntity;
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
import co.simplon.dietcare.model.DietComponent;
import co.simplon.dietcare.model.Meal;
import co.simplon.dietcare.model.MealComponent;
import co.simplon.dietcare.model.Moment;
import co.simplon.dietcare.model.Recipe;
import co.simplon.dietcare.service.MealService;
import org.json.JSONArray;

/**
 * Controller for Meal
 * @author Franck ACHARD, Xavier TAGLIARINO, Ahmed BEN ROUAG
 *
 */
@Controller
@RequestMapping("/meal")
public class MealController {
	
	@Inject
	MealService mealService;
	
	/*@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Long create(@RequestBody Meal meal) {
		System.out.println(meal);
		return mealService.save(meal).getId();
	}*/
	
	/**
	 * Create meal
	 * @param httpEntity: http request for meal creation
	 */
	// plan B pour la creation de "meal" car on n'y arrive pas avec @RequestBody...
	@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public void create(HttpEntity<String> httpEntity) {
		System.out.println(httpEntity.getBody());
		
		JSONObject obj = new JSONObject(httpEntity.getBody());			
		Set<String> keys = obj.keySet();
		Meal meal = new Meal();
			
		for(String mealKey: keys) {
			switch(mealKey) {
				case "id" :
					if(!obj.get("id").equals(null)) {
						meal.setId(obj.getLong("id"));	
					}
				break;
				
				case "name" :
					meal.setName(obj.getString("name"));	
				break;
				
				case "date" :
					meal.setDate(obj.getString("date"));	
				break;
				
				case "moment":
					if(obj.get(mealKey) instanceof JSONObject) {
						
						JSONObject momentJsonObject = (JSONObject) obj.getJSONObject(mealKey);
						Set<String> momentKeys = momentJsonObject.keySet();
						
						Moment moment = new Moment();
						
						for(String momentKey: momentKeys) {
							switch(momentKey) {
							case "id":
								if(!momentJsonObject.get("id").equals(null)) {
									moment.setId(momentJsonObject.getLong("id"));	
								}
								
							case "name":								
								moment.setName(momentJsonObject.getString("name"));									
							break;
							}
						}
						
						meal.setMoment(moment);
					}
				break;
				
				case "mealComponents":
				{
					
					if(obj.get(mealKey) instanceof JSONArray) {
						
						JSONArray mealComponentsJsonArray = (JSONArray) obj.get(mealKey);
						System.out.println("mealComponents");
						
						for(int i = 0; i < mealComponentsJsonArray.length() ; i++) {		
							
							JSONObject jSonComponent = mealComponentsJsonArray.getJSONObject(i);
							MealComponent mealComponent = new MealComponent();
							
							Set<String> componentKeys = jSonComponent.keySet();
							
							for(String componentKey: componentKeys) {						
								
								switch(componentKey) {
								
									case "id":
										if(!jSonComponent.get("id").equals(null)) {
											mealComponent.setId(jSonComponent.getLong("id"));	
										}
									break;
									
									case "quantity":
										
										mealComponent.setQuantity(jSonComponent.getInt("quantity"));	
										
									break;
									
									case "dietComponent" :
										
										if(jSonComponent.get(componentKey) instanceof JSONObject) {	
											
											JSONObject dietComponentJSonObjet = jSonComponent.getJSONObject(componentKey);
											System.out.println(dietComponentJSonObjet.keySet());
											if(jSonComponent.has("type")) {
												String typeOfDietComponent = jSonComponent.getString("type");
												
												DietComponent dietComponent = null;
												
												switch(typeOfDietComponent) {
												
												case "aliment":
													dietComponent = new Aliment();													
												break;
												
												case "recipe":
													dietComponent = new Recipe();												
												break;
												}
												
												Set<String> dietComponentJSonObjetKeys = dietComponentJSonObjet.keySet();
																																			
												if(dietComponent != null) {													
													
													for(String dietComponentJSonObjetKey: dietComponentJSonObjetKeys) {
														switch(dietComponentJSonObjetKey) {
														
														case "id":
															if(!dietComponentJSonObjet.get("id").equals(null)) {
																dietComponent.setId(dietComponentJSonObjet.getLong("id"));	
															}
														break;
														
														case "name":
															if(!dietComponentJSonObjet.get("name").equals(null)) {
																dietComponent.setName(dietComponentJSonObjet.getString("name"));	
															}
														break;
														
														case "description" :
															if(!dietComponentJSonObjet.get("description").equals(null)) {
																dietComponent.setDescription(dietComponentJSonObjet.getString("description"));	
															}
														break;
														
														case "visual" :
															if(!dietComponentJSonObjet.get("visual").equals(null)) {
																dietComponent.setDescription(dietComponentJSonObjet.getString("visual"));	
															}
														break;
														
													}
												}
													
													
													mealComponent.setDietComponent(dietComponent);
													
													if(dietComponent instanceof Aliment) {
														Aliment myDietComponent = ((Aliment) dietComponent);
														myDietComponent.getCategory();
													}if(dietComponent instanceof Recipe) {
														Recipe myDietComponent = ((Recipe) dietComponent);
														
													}
													
													
												}
												
												
												
											}
											
										}
								break;
								
								}
								
								
									
								
							}
							
							meal.addMealComponent(mealComponent);
							mealComponent.setMeal(meal);
							
							
							
							
							
						}
						
						
						
					}
				}
				break;
				
			}
			
		}
		
		System.out.println(meal);
		mealService.save(meal);
			
		
		
	}
	
	/**
	 * Update meal
	 * @param meal: meal to update
	 * @return meal updated
	 */
	@RequestMapping(method = RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public Meal update(@RequestBody Meal meal) {
		return mealService.save(meal);
	}
	
	/**
	 * Find all meals
	 * @return list of all meals
	 */
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public List<Meal> findAll() {
		return mealService.findAll();
	}
	
	/**
	 * Find meal by id
	 * @param id: id of meal to find
	 * @return the meal
	 */	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Optional<Meal> findbyId(@PathVariable("id") Long id) {
		return mealService.findbyId(id);
	}
	
	/**
	 * Find meals by exact name
	 * @param name: name of meal to find
	 * @return list of matching meals
	 */
	@RequestMapping(params = "name", method = RequestMethod.GET)
	@ResponseBody
	public List<Meal> findbyName(@RequestParam("name") String name) {
		return mealService.findbyName(name);
	}

	/**
	 * Find meals by name like
	 * @param namelike: partial name of meals to find
	 * @return list of matching meals
	 */
	@RequestMapping(params = "namelike", method = RequestMethod.GET)
	@ResponseBody
	public List<Meal> findByNameLike(@RequestParam("namelike") String namelike) {
		return mealService.findByNameLike(namelike);
	}
	
	/**
	 * Delete meal
	 * @param meal: meal to delete
	 */
	@RequestMapping(method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteById(@RequestBody Meal meal) {
		mealService.deleteById(meal.getId());
	}
	
}
