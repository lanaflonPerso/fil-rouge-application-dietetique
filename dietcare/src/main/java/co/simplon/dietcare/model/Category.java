package co.simplon.dietcare.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CATEGORY")
public class Category {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "ID")
	private Long id;
	
	@Column(name = "NAME")
	private String name;
	
	@OneToMany(mappedBy = "category", fetch= FetchType.LAZY)
	private List<Aliment> aliments = new ArrayList<Aliment>();

	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Category(Long id, String name, List<Aliment> aliments) {
		super();
		this.id = id;
		this.name = name;
		this.aliments = aliments;
	}

	public Category(String name) {
		this(null, name, null);
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
		return "Category [id=" + id + ", name=" + name + ", nb aliments=" + aliments.size() + "]";
	}
	
	
	
}
