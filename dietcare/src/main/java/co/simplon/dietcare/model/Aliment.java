package co.simplon.dietcare.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "aliment")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
/*@JsonIdentityInfo(
		scope = Aliment.class,  
		generator = ObjectIdGenerators.PropertyGenerator.class, 
		property = "id")*/
public class Aliment extends DietComponent {

	@Column(name = "proteins")
	private Float proteins;
	
	@Column(name = "glucids")
	private Float glucids;
	
	@Column(name = "lipids")
	private Float lipids;
	
	@Column(name = "fibers")
	private Float fibers;
	
	@Column(name = "ig")
	private Float ig;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "fk_category", nullable = false)
	private Category category = new Category();
	
	
	
	@JsonIgnore
	@OneToMany(mappedBy = "aliment", fetch= FetchType.LAZY, cascade = CascadeType.MERGE)
	private List<Ingredient> ingredients = new ArrayList<Ingredient>();

	public Aliment() {
		super();
	}

	public Aliment(Long id, String name, String description, String visual, Float proteins,
			Float glucids, Float lipids, Float fibers, Float ig) {
		super(id, name, description, visual);
		this.proteins = proteins;
		this.glucids = glucids;
		this.lipids = lipids;
		this.fibers = fibers;
		this.ig = ig;
	}
	
	public Aliment(Long id, String name, String description, String visual, Float proteins, Float glucids, Float lipids,
			Float fibers, Float ig, Category category) {
		super(id, name, description, visual);
		this.proteins = proteins;
		this.glucids = glucids;
		this.lipids = lipids;
		this.fibers = fibers;
		this.ig = ig;
		this.category = category;
	}

	public List<Ingredient> getIngredients() {
		return ingredients;
	}

	public void setIngredients(List<Ingredient> ingredients) {
		this.ingredients = ingredients;
	}


	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Float getProteins() {
		return proteins;
	}

	public void setProteins(Float proteins) {
		this.proteins = proteins;
	}

	public Float getGlucids() {
		return glucids;
	}

	public void setGlucids(Float glucids) {
		this.glucids = glucids;
	}

	public Float getLipids() {
		return lipids;
	}

	public void setLipids(Float lipids) {
		this.lipids = lipids;
	}

	public Float getFibers() {
		return fibers;
	}

	public void setFibers(Float fibers) {
		this.fibers = fibers;
	}

	public Float getIg() {
		return ig;
	}

	public void setIg(Float ig) {
		this.ig = ig;
	}
	
	@Override
	public String toString() {
		return "Aliment [id=" + this.getId() + ", name=" + this.getName() + ", category id=" + category.getId() + ", description=" + this.getDescription()
				+ ", visual=" + this.getVisual() + ", proteins=" + proteins + ", glucids=" + glucids + ", lipids=" + lipids + ", fibers="
				+ fibers + ", ig=" + ig + "]";
	}
		
	
}
