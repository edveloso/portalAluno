package br.edu.infnet.portal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.edu.infnet.portal.modelo.Aluno;
import br.edu.infnet.portal.persistencia.AlunoDao;

@Service
public class AlunoService {

	@Autowired
	private AlunoDao alunoDao;

	@Transactional(propagation= Propagation.REQUIRES_NEW)
	public void salvar(Aluno aluno) {
		alunoDao.salvar(aluno);
	}
	
	public AlunoDao getAlunoDao() {
		return alunoDao;
	}

	public void setAlunoDao(AlunoDao alunoDao) {
		this.alunoDao = alunoDao;
	}
	
}
