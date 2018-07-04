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
	private Float proteins;
	
	@Column(name = "GLUCID")
	private Float glucids;
	
	@Column(name = "LIPID")
	private Float lipids;
	
	@Column(name = "FIBER")
	private Float fibers;
	
	@Column(name = "IG")
	private Float ig;

	public Aliment() {
		super();
		// TODO Auto-generated constructor stub
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

	public Float getProtein() {
		return proteins;
	}

	public void setProtein(Float proteins) {
		this.proteins = proteins;
	}

	public Float getGlucid() {
		return glucids;
	}

	public void setGlucid(Float glucids) {
		this.glucids = glucids;
	}

	public Float getLipid() {
		return lipids;
	}

	public void setLipid(Float lipids) {
		this.lipids = lipids;
	}

	public Float getFiber() {
		return fibers;
	}

	public void setFiber(Float fibers) {
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
