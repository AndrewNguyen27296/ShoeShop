package shoeshop.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name = "Products")
public class Product {
	@Id
	String id;
	String name;
	Integer brandId;
	Integer categoryId;
	Integer materialId;
	Double price;
	Integer quantity;
	Integer gender;
	Boolean special;
	Boolean feature;
	Integer discount;
	String description;
	Date createDate;
	Boolean status;
}
