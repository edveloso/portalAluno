package br.edu.infnet.portal.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.infnet.portal.modelo.Aluno;
import br.edu.infnet.portal.service.AlunoService;

@Controller
public class AlunoCtrl {

	@Autowired
	private AlunoService alunoService;
	
	private static List<Aluno> lista = new ArrayList<Aluno>();
	
	static {
		lista.add(new Aluno("Janete", 30));
		lista.add(new Aluno("Godofredo", 4));
		lista.add(new Aluno("Jorge", 50));
		lista.add(new Aluno("Mario", 15));
	}

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String getCadastro(Model model) {
		model.addAttribute("lista",lista);
		model.addAttribute("variavel", "Janete");
		return "form";
	}
	
	
	@RequestMapping(value="/salvar", method=RequestMethod.POST)
	public String salvar(Aluno aluno, Model model) {
		lista.add(aluno);
		alunoService.salvar(aluno);
		return "redirect:/";
	}


	public AlunoService getAlunoService() {
		return alunoService;
	}


	public void setAlunoService(AlunoService alunoService) {
		this.alunoService = alunoService;
	}
	
	
	
	
	
	
	
	
	
	
	
}
