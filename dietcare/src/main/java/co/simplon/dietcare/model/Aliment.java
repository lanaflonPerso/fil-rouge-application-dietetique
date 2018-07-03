package co.simplon.dietcare.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ALIMENT")
public class Aliment {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "ID")
	private Long id;
	
	@Column(name = "NAME")
	private String name;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "fk_category")
	private Category category;
	
	@Column(name = "DESCRIPTION")
	private String description;

	@Column(name = "VISUAL")
	private String visual;
	
	@Column(name = "PROTEIN")
	private Float protein;
	
	@Column(name = "GLUCID")
	private Float glucid;
	
	@Column(name = "LIPID")
	private Float lipid;
	
	@Column(name = "FIBER")
	private Float fiber;
	
	@Column(name = "IG")
	private Float ig;

	public Aliment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Aliment(Long id, String name, Category category, String description, String visual, Float protein,
			Float glucid, Float lipid, Float fiber, Float ig) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.description = description;
		this.visual = visual;
		this.protein = protein;
		this.glucid = glucid;
		this.lipid = lipid;
		this.fiber = fiber;
		this.ig = ig;
	}

	public Aliment(String name, Category category, String description, String visual, Float protein, Float glucid, Float lipid,
			Float fiber, Float ig) {
		this(null, name, category, description, visual, protein, glucid, lipid, fiber, ig);
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

	public Float getProtein() {
		return protein;
	}

	public void setProtein(Float protein) {
		this.protein = protein;
	}

	public Float getGlucid() {
		return glucid;
	}

	public void setGlucid(Float glucid) {
		this.glucid = glucid;
	}

	public Float getLipid() {
		return lipid;
	}

	public void setLipid(Float lipid) {
		this.lipid = lipid;
	}

	public Float getFiber() {
		return fiber;
	}

	public void setFiber(Float fiber) {
		this.fiber = fiber;
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
				+ ", visual=" + visual + ", protein=" + protein + ", glucid=" + glucid + ", lipid=" + lipid + ", fiber="
				+ fiber + ", ig=" + ig + "]";
	}
		
	
}
