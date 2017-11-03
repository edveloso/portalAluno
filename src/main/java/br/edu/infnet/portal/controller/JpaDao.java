package br.edu.infnet.portal.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.edu.infnet.portal.modelo.Aluno;

@Repository
public abstract class JpaDao<E> implements GenericDao<E>{
	
	@PersistenceContext(unitName="mitjava")
	private EntityManager entityManager;

	
	public void salvar(Aluno aluno){
		getEntityManager().persist(aluno);
	}

	
	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	

}
