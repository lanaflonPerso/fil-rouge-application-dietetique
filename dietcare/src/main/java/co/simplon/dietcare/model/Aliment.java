package co.simplon.dietcare.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "aliment")
public class Aliment {

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
	
	@JsonBackReference
	//@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "fk_category", nullable = true)
	private Category category;

	public Aliment() {
		super();
	}

	public Aliment(Long id, String name, Category category, String description, String visual, Float proteins,
			Float glucids, Float lipids, Float fibers, Float ig) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.description = description;
		this.visual = visual;
		this.proteins = proteins;
		this.glucids = glucids;
		this.lipids = lipids;
		this.fibers = fibers;
		this.ig = ig;
	}

	public Aliment(String name, Category category, String description, String visual, Float proteins, Float glucids, Float lipids,
			Float fibers, Float ig) {
		this(null, name, category, description, visual, proteins, glucids, lipids, fibers, ig);
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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
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
		return "Aliment [id=" + id + ", name=" + name + ", category=" + category + ", description=" + description
				+ ", visual=" + visual + ", proteins=" + proteins + ", glucids=" + glucids + ", lipids=" + lipids + ", fibers="
				+ fibers + ", ig=" + ig + "]";
	}
		
	
}
