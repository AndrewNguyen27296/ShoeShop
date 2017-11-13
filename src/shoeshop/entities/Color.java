package shoeshop.entities;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Colors")
public class Color {
	@Id
	@GeneratedValue
	Integer id;
	
	String colorName;
	String colorNameVN;
	String colorCode;

	/*
	 * 1 One to Many (ProductColor)
	 * */
	@OneToMany(mappedBy="color")
	Collection<ProductColor> productColors;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getColorName() {
		return colorName;
	}

	public void setColorName(String colorName) {
		this.colorName = colorName;
	}

	public String getColorNameVN() {
		return colorNameVN;
	}

	public void setColorNameVN(String colorNameVN) {
		this.colorNameVN = colorNameVN;
	}

	public String getColorCode() {
		return colorCode;
	}

	public void setColorCode(String colorCode) {
		this.colorCode = colorCode;
	}

	public Collection<ProductColor> getProductColors() {
		return productColors;
	}

	public void setProductColors(Collection<ProductColor> productColors) {
		this.productColors = productColors;
	}
	
	
}
