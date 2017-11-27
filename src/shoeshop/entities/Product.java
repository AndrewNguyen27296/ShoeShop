package shoeshop.entities;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
@Table(name = "Products")
public class Product {
	@Id
	String id;
	String name;
	
	//Integer brandId;
	//Integer categoryId;
	//Integer materialId;
	
	Double price;
	Integer gender;
	Boolean special;
	Boolean feature;
	Integer discount;
	String description;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="MM/dd/yyyy")
	Date createDate;
	Boolean status;
	
	
	/*
	 * 3 Many to One (BrandId & CategoryId & MaterialId)
	 * 3 One to Many (OrderDetail & ProductImage & ProductSize)
	 * */
	@ManyToOne
	@JoinColumn(name="BrandId")
	Brand brand;
	
	@ManyToOne
	@JoinColumn(name="CategoryId")
	Category category;
	
	@ManyToOne
	@JoinColumn(name="MaterialId")
	Material material;
	
	@OneToMany(mappedBy="product")
	Collection<ProductImage> productImages;

	@OneToMany(mappedBy="product")
	Collection<ProductSize> productSizes;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public Boolean getSpecial() {
		return special;
	}

	public void setSpecial(Boolean special) {
		this.special = special;
	}

	public Boolean getFeature() {
		return feature;
	}

	public void setFeature(Boolean feature) {
		this.feature = feature;
	}

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Material getMaterial() {
		return material;
	}

	public void setMaterial(Material material) {
		this.material = material;
	}

	public Collection<ProductImage> getProductImages() {
		return productImages;
	}

	public void setProductImages(Collection<ProductImage> productImages) {
		this.productImages = productImages;
	}

	public Collection<ProductSize> getProductSizes() {
		return productSizes;
	}

	public void setProductSizes(Collection<ProductSize> productSizes) {
		this.productSizes = productSizes;
	}
	
	
}
