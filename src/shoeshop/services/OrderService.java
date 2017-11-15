package shoeshop.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import shoeshop.entities.Order;

@Component
@Transactional
public class OrderService {
	@Autowired
	SessionFactory factory;

	public void insert(Order order) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(order);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void update(Order order) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(order);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void delete(Order order) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(order);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void refresh(Order order) {
		Session session = factory.getCurrentSession();
		session.refresh(order);
	}

	public Order get(String id) {
		Session session = factory.getCurrentSession();
		Order order = (Order) session.get(Order.class, id);
		return order;
	}

	public List<Order> list() {
		String hql = "FROM Order";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Order> list = query.list();
		return list;
	}

}
