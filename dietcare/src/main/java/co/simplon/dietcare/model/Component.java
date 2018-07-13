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
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name = "component")
//@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@JsonIdentityInfo(
	  	scope=Component.class,
		generator = ObjectIdGenerators.PropertyGenerator.class, 
	  property = "id")
public class Component {
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	@JsonBackReference (value = "meal-dietcomponents")
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "fk_dietcomponent", nullable = true)
	private DietComponent dietComponent;
	
	@JsonBackReference (value = "meal-components")
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "fk_meal", nullable = true)
	private Meal meal;
	
	@Column(name = "quantity")
	private int quantity;

	public DietComponent getDietComponent() {
		return dietComponent;
	}

	public void setDietComponent(DietComponent dietComponent) {
		this.dietComponent = dietComponent;
	}

	public Meal getMeal() {
		return meal;
	}

	public void setMeal(Meal meal) {
		this.meal = meal;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
