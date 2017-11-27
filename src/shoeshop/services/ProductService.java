package shoeshop.services;

import java.util.Collections;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import shoeshop.entities.Product;

@Component
@Transactional
public class ProductService {
	@Autowired
	SessionFactory factory;

	public void insert(Product product) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(product);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void update(Product product) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(product);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void delete(Product product) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(product);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void refresh(Product product) {
		Session session = factory.getCurrentSession();
		session.refresh(product);
	}

	public Product get(String id) {
		Session session = factory.getCurrentSession();
		Product product = (Product) session.get(Product.class, id);
		Hibernate.initialize(product.getProductImages());
		Hibernate.initialize(product.getProductSizes());
		Hibernate.initialize(product.getBrand().getProducts());
		product.getBrand().getProducts().forEach(p -> {
			Hibernate.initialize(p.getProductImages());
		});		
		Hibernate.initialize(product.getCategory().getProducts());
		product.getCategory().getProducts().forEach(p -> {
			Hibernate.initialize(p.getProductImages());
		});
		return product;
	}

	public List<Product> list() {
		String hql = "FROM Product WHERE status = true ORDER BY createDate DESC";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		list.forEach(p -> {
			Hibernate.initialize(p.getProductImages());
			Hibernate.initialize(p.getProductSizes());
		});
		return list;
	}
	
	public List<Product> listSpecial() {
		String hql = "FROM Product WHERE special = true ORDER BY RAND()";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setMaxResults(5);
		List<Product> list = query.list();
		list.forEach(p -> {
			Hibernate.initialize(p.getProductImages());
			Hibernate.initialize(p.getProductSizes());
		});
		return list;
	}
	
	public List<Product> listLastest() {
		String hql = "FROM Product WHERE status = true ORDER BY createDate DESC";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setMaxResults(6);
		List<Product> list = query.list();
		list.forEach(p -> {
			Hibernate.initialize(p.getProductImages());
			Hibernate.initialize(p.getProductSizes());
		});
		
		Collections.shuffle(list);
		return list;
	}
	
	public List<Product> listRand() {
		String hql = "FROM Product WHERE status = true ORDER BY RAND()";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setMaxResults(12);
		List<Product> list = query.list();
		list.forEach(p -> {
			Hibernate.initialize(p.getProductImages());
			Hibernate.initialize(p.getProductSizes());
		});
		
		Collections.shuffle(list);
		return list;
	}
	
	public List<Product> listRand2() {
		String hql = "FROM Product WHERE status = true ORDER BY RAND()";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setMaxResults(12);
		List<Product> list = query.list();
		list.forEach(p -> {
			Hibernate.initialize(p.getProductImages());
			Hibernate.initialize(p.getProductSizes());
		});
		
		Collections.shuffle(list);
		return list;
	}
	
	/*
	 *	List Product co CategoryId = 1 (Men's) 
	 * */
	public List<Product> listMenProduct() {
		String hql = "FROM Product WHERE category.name = :cate ORDER BY RAND()";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setParameter("cate", "Men's");
		List<Product> list = query.list();
		list.forEach(p -> {
			Hibernate.initialize(p.getProductImages());
			Hibernate.initialize(p.getProductSizes());
		});
		return list;
	}

	public List<Product> listWomenProduct() {
		String hql = "FROM Product WHERE category.name = :cate ORDER BY RAND()";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setParameter("cate", "Women's");
		List<Product> list = query.list();
		list.forEach(p -> {
			Hibernate.initialize(p.getProductImages());
			Hibernate.initialize(p.getProductSizes());
		});
		return list;
	}
	
	public List<Product> listKidProduct() {
		String hql = "FROM Product WHERE category.name = :cate ORDER BY RAND()";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setParameter("cate", "Kid's");
		List<Product> list = query.list();
		list.forEach(p -> {
			Hibernate.initialize(p.getProductImages());
			Hibernate.initialize(p.getProductSizes());
		});
		return list;
	}
	
	public List<Product> listSportProduct() {
		String hql = "FROM Product WHERE category.name = :cate ORDER BY RAND()";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setParameter("cate", "Sport's");
		List<Product> list = query.list();
		list.forEach(p -> {
			Hibernate.initialize(p.getProductImages());
			Hibernate.initialize(p.getProductSizes());
		});
		return list;
	}

	public List<Product> listByBrand(int id) {
		String hql = "FROM Product WHERE brand.id = :brandId ORDER BY RAND()";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setParameter("brandId", id);
		List<Product> list = query.list();
		list.forEach(p -> {
			Hibernate.initialize(p.getProductImages());
			Hibernate.initialize(p.getProductSizes());
		});
		return list;
	}
	
	
	
}
