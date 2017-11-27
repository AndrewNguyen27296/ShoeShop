package shoeshop.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import shoeshop.entities.Brand;

@Component
@Transactional
public class BrandService {
	@Autowired
	SessionFactory factory;

	public void insert(Brand brand) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(brand);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void update(Brand brand) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(brand);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void delete(Brand brand) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(brand);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void refresh(Brand brand) {
		Session session = factory.getCurrentSession();
		session.refresh(brand);
	}

	public Brand get(Integer id) {
		Session session = factory.getCurrentSession();
		Brand brand = (Brand) session.get(Brand.class, id);
		return brand;
	}

	public List<Brand> list() {
		String hql = "FROM Brand";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Brand> list = query.list();
		return list;
	}

}
