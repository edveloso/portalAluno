package br.edu.infnet.portal.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.infnet.portal.modelo.Aluno;

@Controller
public class AlunoCtrl {

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
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
	
	
	
}
