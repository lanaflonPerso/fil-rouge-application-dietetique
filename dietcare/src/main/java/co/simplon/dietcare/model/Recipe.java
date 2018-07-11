package co.simplon.dietcare.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name = "recipe")
@JsonIdentityInfo(
		scope = Recipe.class,  
		generator = ObjectIdGenerators.PropertyGenerator.class, 
		property = "id")
public class Recipe extends DietComponent {
	
	public Recipe() {
		super();
	}
	
	//@JsonManagedReference(value = "recipe-ingredients")
	@OneToMany(mappedBy = "recipe", fetch= FetchType.LAZY, cascade = CascadeType.MERGE)
	private List<Ingredient> ingredients = new ArrayList<Ingredient>();

	public List<Ingredient> getIngredients() {
		return ingredients;
	}

	public void setIngredients(List<Ingredient> ingredients) {
		this.ingredients = ingredients;
	}

}
