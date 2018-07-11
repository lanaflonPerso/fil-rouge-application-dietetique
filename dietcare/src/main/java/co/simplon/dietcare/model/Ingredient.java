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
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name = "ingredient")
@JsonIdentityInfo(
		scope = Ingredient.class,  
		generator = ObjectIdGenerators.PropertyGenerator.class, 
		property = "id")
public class Ingredient {
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;
	
	//@JsonBackReference(value = "aliment-ingredients")
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.MERGE)
	@JoinColumn(name = "fk_aliment", nullable = true)
	private Aliment aliment;
	
	//@JsonBackReference(value = "recipe-ingredients")
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.MERGE)
	@JoinColumn(name = "fk_recipe", nullable = true)
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
