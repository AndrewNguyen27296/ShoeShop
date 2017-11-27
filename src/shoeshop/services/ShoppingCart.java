package shoeshop.services;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import shoeshop.entities.Product;
import shoeshop.entities.ProductSize;

///Id cua Component - cart
@Component("cart") 
///Neu bean nay duoc tao se luu vao session gium luon
@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ShoppingCart {
	
	@Autowired
	ProductSizeService productSizeService;
	
	Map<Integer,ProductSize> map = new HashMap<Integer,ProductSize>();
	
	/**
	 * Them hang vao gio hang
	 * @param id: la ma index cua product size
	 * 
	 * */
	public void add(Integer id) {
		ProductSize productSize = map.get(id);
		if(productSize != null) {
			productSize.setQuantity(productSize.getQuantity()+1);
		}
		else {
			productSize = productSizeService.get(id);
			productSize.setQuantity(1);
			map.put(id,productSize);
		}
	}
	
	/**
	 * Xoa mot mat hang khoi gio hang
	 * @param id: la id cua mat hang bi xoa
	 * */
	public void remove(Integer id) {
		map.remove(id);
	}
	
	/**
	 * Xoa het tat ca cac mat hang khoi gio hang
	 * 
	 * */
	public void clear() {
		map.clear();
	}
	
	/**
	 * Cap nhat so luong cua mat hang vao gio hang
	 * @param id: la id cua mat hang can cap nhat
	 * @param newQuantity: la so luong moi cua mat hang can cap nhat
	 * 
	 * */
	public void update(Integer id, Integer newQuantity) {
		ProductSize productSize = map.get(id);
		productSize.setQuantity(newQuantity);
	}
	
	/**
	 * Lay tong so luong mat hang hien dang co trong gio hang
	 * 
	 * */
	public int getCount() {
		int total = 0;
		for(ProductSize p : getItems()) {
			total += p.getQuantity();
		}
		return total;
	}
	
	/**
	 * Lay tong gia tien cua cac mat hang co trong gio hang
	 * 
	 * */
	public double getAmount() {
		double total = 0.00;
		for(ProductSize p : getItems()) {
			// Discount trong database là tính theo 100%
			total += p.getQuantity()*p.getProduct().getPrice()*(1 - (p.getProduct().getDiscount()*1.0/100));
		}
		return total;
	}
	
	public ProductSize getItem(Integer id) {
		return map.get(id);
	}
	
	/**
	 * Lay danh sach cac mat hang da duoc them vao gio hang
	 * 
	 * */
	public Collection<ProductSize> getItems() {
		return map.values();
	}
}
