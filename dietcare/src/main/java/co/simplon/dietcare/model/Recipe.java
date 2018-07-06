package co.simplon.dietcare.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "recipe")
public class Recipe extends DietComponent {
	
	public Recipe() {
		super();
	}

}
