package co.simplon.dietcare.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

@Entity
@Table(name = "dietcomponent")
@Inheritance(strategy = InheritanceType.JOINED)
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
//@JsonDeserialize(as = Aliment.class)
/*@JsonIdentityInfo(
		scope = DietComponent.class,  
		generator = ObjectIdGenerators.PropertyGenerator.class, 
		property = "id")*/
public abstract class DietComponent {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "description")
	private String description;

	@Column(name = "visual")
	private String visual;
	
	
	@OneToMany(mappedBy = "dietComponent", fetch= FetchType.LAZY, cascade = CascadeType.ALL)
	private List<MealComponent> mealComponents = new ArrayList<MealComponent>();
	
	public List<MealComponent> getMealComponent() {
		return mealComponents;
	}

	public void setMealComponent(List<MealComponent> mealComponent) {
		this.mealComponents = mealComponent;
	}


	public DietComponent(Long id, String name, String description, String visual) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.visual = visual;		
	}
	
	public DietComponent() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getVisual() {
		return visual;
	}

	public void setVisual(String visual) {
		this.visual = visual;
	}
	
}
