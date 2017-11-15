package shoeshop.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import shoeshop.entities.OrderDetail;

@Component
@Transactional
public class OrderDetailService {
	@Autowired
	SessionFactory factory;

	public void insert(OrderDetail orderDetail) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(orderDetail);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void update(OrderDetail orderDetail) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(orderDetail);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void delete(OrderDetail orderDetail) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(orderDetail);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void refresh(OrderDetail orderDetail) {
		Session session = factory.getCurrentSession();
		session.refresh(orderDetail);
	}

	public OrderDetail get(String id) {
		Session session = factory.getCurrentSession();
		OrderDetail orderDetail = (OrderDetail) session.get(OrderDetail.class, id);
		return orderDetail;
	}

	public List<OrderDetail> list() {
		String hql = "FROM OrderDetail";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<OrderDetail> list = query.list();
		return list;
	}

}
