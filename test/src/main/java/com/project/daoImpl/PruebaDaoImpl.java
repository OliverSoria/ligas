package com.project.daoImpl;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.project.dao.PruebaDao;
import com.project.dto.PruebaDto;
import com.project.util.HibernateUtil;

@Repository("pruebaDao")
public class PruebaDaoImpl implements PruebaDao {

	public String testing() {
		//Session session = HibernateUtil.getSessionFactory().openSession();
		//session.beginTransaction();
		String retorno = null;
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			transaction = session.beginTransaction();

			CriteriaBuilder builder = session.getCriteriaBuilder();
			CriteriaQuery<PruebaDto> query = builder.createQuery(PruebaDto.class);
			Root<PruebaDto> root = query.from(PruebaDto.class);
			query.select(root);
			Query<PruebaDto> q=session.createQuery(query);
			List<PruebaDto> registros=q.getResultList();
			for (PruebaDto registro : registros) {
				System.out.println(registro.getNombre());
			}
			transaction.commit();
			retorno = registros.get(0).getNombre();
		} catch (Exception e) {
			e.printStackTrace();
			if (transaction != null) {
				transaction.rollback();
			}
		}

		return retorno;

	}




	public String consultaDao() throws Exception {
		return "DAO";
	}
}
