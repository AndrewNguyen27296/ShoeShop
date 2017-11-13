package shoeshop.entities;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Sizes")
public class Size {
	@Id
	@GeneratedValue
	Integer id;
	
	Double sizeVN;
	Double sizeUS;
	
	/*
	 * 1 One to Many(ProductSize)
	 * */
	@OneToMany(mappedBy="size")
	Collection<ProductSize> productSizes;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getSizeVN() {
		return sizeVN;
	}

	public void setSizeVN(Double sizeVN) {
		this.sizeVN = sizeVN;
	}

	public Double getSizeUS() {
		return sizeUS;
	}

	public void setSizeUS(Double sizeUS) {
		this.sizeUS = sizeUS;
	}

	public Collection<ProductSize> getProductSizes() {
		return productSizes;
	}

	public void setProductSizes(Collection<ProductSize> productSizes) {
		this.productSizes = productSizes;
	}

	
}
