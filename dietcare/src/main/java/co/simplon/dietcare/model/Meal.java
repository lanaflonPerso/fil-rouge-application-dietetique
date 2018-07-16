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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name = "meal")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
/*@JsonIdentityInfo(
	  	scope=Meal.class,
		generator = ObjectIdGenerators.PropertyGenerator.class, 
	  property = "id")*/
public class Meal {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "date")
	private String date;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "fk_moment", nullable = false)
	private Moment moment  = new Moment();
	
	
	@OneToMany(mappedBy = "meal", fetch= FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval=true)
	private List<MealComponent> mealComponents = new ArrayList<MealComponent>();

	
	public Moment getMoment() {
		return moment;
	}

	public void setMoment(Moment moment) {
		this.moment = moment;
	}

	public List<MealComponent> getMealComponents() {
		return mealComponents;
	}

	public void setMealComponents(ArrayList<MealComponent> mealComponents) {
		this.mealComponents = mealComponents;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String toString() {
		String str = "Meal = name : "+this.getName()+" date : "+this.getDate();
		str += "\n Moment : ";
		if(this.getMoment() != null) {
			str += this.getMoment().getName();			
		}
		else {
			str += "Vide";
		}
		
		str += "\n Composition :";
		if(this.getMealComponents().size() > 0) {
			str += "Il y a "+this.getMealComponents().size() +" élément(s) \n : ";
			for(MealComponent mealComponent : this.getMealComponents()) {
				if(mealComponent.getDietComponent() != null) {
					str += mealComponent.getDietComponent().getName() + " : quantité : " +mealComponent.getDietComponent() + " g ";;
				}
			}
			
		}else {
			str += "Vide";
		}
		
		return str;
	}
	
	public void addMealComponent(MealComponent mealComponent) {
		this.mealComponents.add(mealComponent);
	}
}
