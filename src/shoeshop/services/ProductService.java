package shoeshop.services;

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

}
