package shoeshop.admin.controllers;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shoeshop.entities.Brand;
import shoeshop.entities.Category;
import shoeshop.entities.Material;
import shoeshop.entities.Product;
import shoeshop.entities.ProductImage;
import shoeshop.entities.ProductSize;
import shoeshop.entities.Size;
import shoeshop.services.BrandService;
import shoeshop.services.CategoryService;
import shoeshop.services.MaterialService;
import shoeshop.services.ProductImageService;
import shoeshop.services.ProductService;
import shoeshop.services.ProductSizeService;
import shoeshop.services.SizeService;

@Controller
@RequestMapping("admin/dashboard")
public class AdminProductController {
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	MaterialService materialService;
	@Autowired
	BrandService brandService;
	@Autowired
	SizeService sizeService;
	@Autowired
	ProductImageService productImageService;
	@Autowired
	ProductSizeService productSizeService;
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	ServletContext app;
	
	@RequestMapping("list/products")
	public String listProduct(ModelMap modelMap) {
		return "admin/dashboard/product/list";
	}

	@RequestMapping("add/product")
	public String add(ModelMap model) {
		model.addAttribute("prod", new Product());
		return "admin/dashboard/product/add";
	}

	@RequestMapping(value = "add/product", method = RequestMethod.POST)
	public String add(ModelMap model, @ModelAttribute("prod") Product product,
			@RequestParam(value = "listImages", defaultValue = "") String listImages,
			@RequestParam(value = "listSizes", defaultValue = "") String listSizes,
			@RequestParam(value = "listQuantity") String listQuantity) {
		if (!listImages.isEmpty()) {
			Session session = sessionFactory.openSession();
			Transaction t = session.beginTransaction();
			try {
				// add product
				product.setCreateDate(new Date());
				product.setStatus(true);
				productService.insert(product);
				// add product images
				String[] listStringImage = listImages.split(";");
				for (String imgPath : listStringImage) {
					String imgName = imgPath.split("/files/")[1].replace(";", "");
					System.out.println("log");
					ProductImage productImage = new ProductImage();
					productImage.setImage(imgName);
					productImage.setProduct(product);
					productImageService.insert(productImage);
				}
				// add product sizes
				String[] sizes = listSizes.split(";");
				String[] quantities = listQuantity.split(";");
				for (int i = 0; i < sizes.length; i++) {
					ProductSize proSize = new ProductSize();
					proSize.setProduct(product);
					proSize.setQuantity(Integer.parseInt(quantities[i]));
					Size size = sizeService.get(Integer.valueOf(sizes[i]));
					proSize.setSize(size);
					productSizeService.insert(proSize);
				}

				t.commit();
				model.addAttribute("prod", new Product());
				model.addAttribute("success", "Add product successfully.");
			} catch (Exception e) {
				t.rollback();
				e.printStackTrace();
				model.addAttribute("error", "Add product failed. Please try again !");
			} finally {
				session.close();
			}
		} else {
			model.addAttribute("error", "List images is empty.");
		}

		return "admin/dashboard/product/add";
	}

	@RequestMapping("edit/product/{id}")
	public String edit(ModelMap model, @PathVariable("id") String id) {
		model.addAttribute("prodImages", productService.get(id).getProductImages());
		model.addAttribute("prodSizes", productService.get(id).getProductSizes());
		model.addAttribute("prod", productService.get(id));
		return "admin/dashboard/product/edit";
	}

	@RequestMapping(value = "edit/product", method = RequestMethod.POST)
	public String edit(ModelMap model, @ModelAttribute("prod") Product product,
			@RequestParam(value = "listImages", defaultValue = "") String listImages,
			@RequestParam(value = "listSizes", defaultValue = "") String listSizes,
			@RequestParam(value = "listQuantity") String listQuantity) {
		if (!listImages.isEmpty()) {
			try {
				// add product
				product.setCreateDate(new Date());
				product.setStatus(true);
				productService.update(product);
				
				// add product images
				productImageService.deleteByProduct(product);
				String[] listStringImage = listImages.split(";");
				for (String imgPath : listStringImage) {
					String imgName = imgPath.split("/files/")[1].replace(";", "");
					System.out.println("log");
					ProductImage productImage = new ProductImage();
					productImage.setImage(imgName);
					productImage.setProduct(product);
					productImageService.insert(productImage);
				}
				
				// add product sizes
				productSizeService.deleteByProduct(product);
				String[] sizes = listSizes.split(";");
				String[] quantities = listQuantity.split(";");
				for (int i = 0; i < sizes.length; i++) {
					ProductSize proSize = new ProductSize();
					proSize.setProduct(product);
					proSize.setQuantity(Integer.parseInt(quantities[i]));
					Size size = sizeService.get(Integer.valueOf(sizes[i]));
					proSize.setSize(size);
					productSizeService.insert(proSize);
				}
				model.addAttribute("success", "Update product successfully.");
			} catch (Exception e) {
				model.addAttribute("error", "Update product failed. Please try again !");
			}
		} else {
			model.addAttribute("error", "List images is empty.");
		}

		return "admin/dashboard/product/edit";
	}

	@RequestMapping(value = "delete/product/{id}")
	public String delete(ModelMap model, @PathVariable("id") String id) {
		Product product = productService.get(id);
		product.setStatus(false);
		productService.update(product);
		return "redirect:/admin/dashboard/list/products/";
	}

	@ModelAttribute("cates")
	public List<Category> getListCategories() {
		return categoryService.list();
	}

	@ModelAttribute("brands")
	public List<Brand> getListBrands() {
		return brandService.list();
	}

	@ModelAttribute("mates")
	public List<Material> getListSizes() {
		return materialService.list();
	}

	@ModelAttribute("sizes")
	public List<Size> getListMaterials() {
		return sizeService.list();
	}
	
	@ModelAttribute("prods")
	public List<Product> getListProducts() {
		return productService.list();
	}
}
