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
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "category")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
/*@JsonIdentityInfo(
		  	scope=Category.class,
			generator = ObjectIdGenerators.PropertyGenerator.class, 
		    property = "id")*/
public class Category {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "name")
	private String name;
	
	//@JsonBackReference
	@JsonIgnore
	@OneToMany(mappedBy = "category", fetch= FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Aliment> aliments = new ArrayList<Aliment>();

	public Category() {
		super();
	}

	public Category(Long id, String name) {
		super();
		this.id = id;
		this.name = name;
		
	}

	public Category(String name) {
		this.name = name;
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
	
	public List<Aliment> getAliments() {
		return aliments;
	}

	public void setAliments(List<Aliment> aliments) {
		this.aliments = aliments;
	}

	@Override
	public String toString() {
		String str = "Category [id=" + id + ", name=" + name + ", nb aliments=" + aliments.size() + "]";
		for(Aliment aliment: this.getAliments()) {
			str += aliment.getName();
		}
		return str;
	}
	
	
	
}
