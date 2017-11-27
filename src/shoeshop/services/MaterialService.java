package shoeshop.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import shoeshop.entities.Material;

@Component
@Transactional
public class MaterialService {
	@Autowired
	SessionFactory factory;

	public void insert(Material material) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(material);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void update(Material material) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(material);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void delete(Material material) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(material);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		} finally {
			session.close();
		}
	}

	public void refresh(Material material) {
		Session session = factory.getCurrentSession();
		session.refresh(material);
	}

	public Material get(Integer id) {
		Session session = factory.getCurrentSession();
		Material material = (Material) session.get(Material.class, id);
		return material;
	}

	public List<Material> list() {
		String hql = "FROM Material";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Material> list = query.list();
		return list;
	}

}
