package shoeshop.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="ProductColors")
public class ProductColor {
	@Id
	@GeneratedValue
	Integer id;
	
	//String productId;
	
	//Integer colorId;
	
	
	/*
	 * 2 Many to One(ProductId & ColorId)
	 * */
	@ManyToOne
	@JoinColumn(name="ProductId")
	Product product;
	
	@ManyToOne
	@JoinColumn(name="ColorId")
	Color color;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Color getColor() {
		return color;
	}

	public void setColor(Color color) {
		this.color = color;
	}
	
	
}
