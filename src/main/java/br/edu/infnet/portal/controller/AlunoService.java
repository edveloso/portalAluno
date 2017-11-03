package br.edu.infnet.portal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.edu.infnet.portal.modelo.Aluno;

@Transactional(propagation= Propagation.REQUIRES_NEW)
@Service
public class AlunoService {

	@Autowired
	private AlunoDao alunoDao;
	
	
	public void salvar(Aluno aluno){
		alunoDao.salvar(aluno);
	}

	public AlunoDao getAlunoDao() {
		return alunoDao;
	}

	public void setAlunoDao(AlunoDao alunoDao) {
		this.alunoDao = alunoDao;
	}
	
}
