package shoeshop.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import shoeshop.entities.Color;

@Component
@Transactional
public class ColorService {
	@Autowired
	SessionFactory factory;

	public void insert(Color color) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(color);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void update(Color color) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(color);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void delete(Color color) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(color);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void refresh(Color color) {
		Session session = factory.getCurrentSession();
		session.refresh(color);
	}

	public Color get(String id) {
		Session session = factory.getCurrentSession();
		Color color = (Color) session.get(Color.class, id);
		return color;
	}

	public List<Color> list() {
		String hql = "FROM Color";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Color> list = query.list();
		return list;
	}

}
