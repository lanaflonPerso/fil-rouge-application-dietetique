package co.simplon.dietcare.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name = "ingredient")
/*@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@JsonIdentityInfo(
		scope = Ingredient.class,  
		generator = ObjectIdGenerators.PropertyGenerator.class, 
		property = "id")*/
public class Ingredient {
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;
	
	//@JsonBackReference(value = "aliment-ingredients")
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "fk_aliment", nullable = false)
	private Aliment aliment;
	
	//@JsonBackReference(value = "recipe-ingredients")
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "fk_recipe", nullable = false)
	private Recipe recipe;

	@Column(name = "quantity")
	private int quantity;
	
	public Ingredient() {
		super();
	}
	
	public Aliment getAliment() {
		return aliment;
	}

	public void setAliment(Aliment aliment) {
		this.aliment = aliment;
	}

	public Recipe getRecipe() {
		return recipe;
	}

	public void setRecipe(Recipe recipe) {
		this.recipe = recipe;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	
}
