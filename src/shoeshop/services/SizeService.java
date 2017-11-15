package shoeshop.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import shoeshop.entities.Size;

@Component
@Transactional
public class SizeService {
	@Autowired
	SessionFactory factory;

	public void insert(Size size) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(size);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void update(Size size) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(size);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void delete(Size size) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(size);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void refresh(Size size) {
		Session session = factory.getCurrentSession();
		session.refresh(size);
	}

	public Size get(String id) {
		Session session = factory.getCurrentSession();
		Size size = (Size) session.get(Size.class, id);
		return size;
	}

	public List<Size> list() {
		String hql = "FROM Size";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Size> list = query.list();
		return list;
	}

}
