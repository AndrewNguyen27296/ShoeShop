package shoeshop.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="ProductImages")
public class ProductImage {
	@Id
	@GeneratedValue
	Integer id;
	
	//String productId;
	
	String image;
	
	/*
	 * 1 Many to One (ProductId)
	 * */
	@ManyToOne
	@JoinColumn(name="ProductId")
	Product product;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
	
}
