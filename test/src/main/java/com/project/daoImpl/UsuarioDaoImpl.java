package com.project.daoImpl;

import java.util.ArrayList;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.project.dao.UsuariosDao;
import com.project.dto.UsuarioDto;
import com.project.util.HibernateUtil;

@Repository("usuariosDao")
public class UsuarioDaoImpl implements UsuariosDao {

	@Override
	public ArrayList<UsuarioDto> selectUsuarios() throws Exception {
		
		ArrayList<UsuarioDto> retorno = null;
		Transaction transaction = null;
		
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			transaction = session.beginTransaction();

			CriteriaBuilder builder = session.getCriteriaBuilder();
			CriteriaQuery<UsuarioDto> query = builder.createQuery(UsuarioDto.class);
			
			Root<UsuarioDto> root = query.from(UsuarioDto.class);
			query.select(root);
			
			Query<UsuarioDto> q = session.createQuery(query);
			
			retorno = (ArrayList<UsuarioDto>) q.getResultList();
			
//			for (UsuarioDto registro : retorno) {
//				System.out.println(registro.getAlias_usuario());
//			}
			transaction.commit();
//			retorno = registros.get(0).getNombre();
		} catch (Exception e) {
			e.printStackTrace();
			
			if (transaction != null) {
				transaction.rollback();
			}
			
			throw e;
		}

		return retorno;
	}

	@Override
	public void insertUsuario(UsuarioDto usuario) throws Exception {
		Session session = null;
	    Transaction transaction = null;
		
		try {
			session = HibernateUtil.getSessionFactory().openSession();
		    transaction = session.getTransaction();
		    transaction.begin();
			
		    session.save(usuario);
		    transaction.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			
			if (transaction != null) {
				transaction.rollback();
			}
			
			throw e;
		} finally {
			if (session != null) {
				session.close();
		     }
		}
	}

	@Override
	public void updateUsuario(UsuarioDto usuario) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteUsuario(UsuarioDto usuario) throws Exception {
		// TODO Auto-generated method stub
		
	}
}
