package shoeshop.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import shoeshop.entities.ProductColor;

@Component
@Transactional
public class ProductColorService {
	@Autowired
	SessionFactory factory;

	public void insert(ProductColor productColor) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(productColor);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void update(ProductColor productColor) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(productColor);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void delete(ProductColor productColor) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(productColor);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void refresh(ProductColor productColor) {
		Session session = factory.getCurrentSession();
		session.refresh(productColor);
	}

	public ProductColor get(String id) {
		Session session = factory.getCurrentSession();
		ProductColor productColor = (ProductColor) session.get(ProductColor.class, id);
		return productColor;
	}

	public List<ProductColor> list() {
		String hql = "FROM ProductColor";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<ProductColor> list = query.list();
		return list;
	}

}
