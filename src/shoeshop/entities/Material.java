package shoeshop.entities;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Materials")
public class Material {
	@Id
	@GeneratedValue
	Integer id;
	
	String material;
	String materialVN;
	
	/*
	 * 1 One to Many (Product)
	 * */
	@OneToMany(mappedBy="material")
	Collection<Product> products;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getMaterialVN() {
		return materialVN;
	}

	public void setMaterialVN(String materialVN) {
		this.materialVN = materialVN;
	}

	public Collection<Product> getProducts() {
		return products;
	}

	public void setProducts(Collection<Product> products) {
		this.products = products;
	}
	
	
		
}
