package shoeshop.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import shoeshop.entities.Product;
import shoeshop.entities.ProductImage;

@Component
@Transactional
public class ProductImageService {
	@Autowired
	SessionFactory factory;

	public void insert(ProductImage productImage) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(productImage);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void update(ProductImage productImage) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(productImage);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void delete(ProductImage productImage) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(productImage);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void refresh(ProductImage productImage) {
		Session session = factory.getCurrentSession();
		session.refresh(productImage);
	}

	public ProductImage get(String id) {
		Session session = factory.getCurrentSession();
		ProductImage productImage = (ProductImage) session.get(ProductImage.class, id);
		return productImage;
	}

	public List<ProductImage> list() {
		String hql = "FROM ProductImage";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<ProductImage> list = query.list();
		return list;
	}

	public void deleteByProduct(Product product) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			String hql = "DELETE FROM ProductImage WHERE product.id = :id";
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
