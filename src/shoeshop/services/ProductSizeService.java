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
import shoeshop.entities.ProductSize;

@Component
@Transactional
public class ProductSizeService {
	@Autowired
	SessionFactory factory;

	public void insert(ProductSize productSize) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(productSize);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void update(ProductSize productSize) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(productSize);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void delete(ProductSize productSize) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(productSize);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void refresh(ProductSize productSize) {
		Session session = factory.getCurrentSession();
		session.refresh(productSize);
	}

	public ProductSize get(Integer id) {
		Session session = factory.getCurrentSession();
		ProductSize productSize = (ProductSize) session.get(ProductSize.class, id);
		Hibernate.initialize(productSize.getProduct().getProductImages());
		return productSize;
	}

	public List<ProductSize> list() {
		String hql = "FROM ProductSize";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<ProductSize> list = query.list();
		return list;
	}

	public void deleteByProduct(Product product) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			String hql = "DELETE FROM ProductSize WHERE product.id = :id";
			Query query = session.createQuery(hql);
			query.setParameter("id", product.getId());
			query.executeUpdate();
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}		
	}

}
