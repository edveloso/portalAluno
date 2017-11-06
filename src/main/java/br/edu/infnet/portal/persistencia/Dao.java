package br.edu.infnet.portal.persistencia;

public interface Dao<T> {

	void salvar(T entity);
	
}
