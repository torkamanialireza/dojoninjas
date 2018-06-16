package com.alireza.dojoninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alireza.dojoninjas.models.Dojo;
import com.alireza.dojoninjas.models.Ninja;
import com.alireza.dojoninjas.services.DojoService;

@Controller
@RequestMapping("/dojos")
public class DojoController {
	private final DojoService dojoService;
	public DojoController(DojoService dojoService) {
		this.dojoService = dojoService;
	}
	

	@RequestMapping("")
	public String index(Model model) {	
		List <Dojo> dojos = dojoService.allDojos();
		
		model.addAttribute("dojos", dojos);
		return "dojos/index.jsp";
	}
	@RequestMapping("/{id}")
	public String showDojo(Model model,@PathVariable("id") Long id) {	
		Dojo dojo = dojoService.findDojo(id);
		model.addAttribute("dojo", dojo);
		model.addAttribute("allninjasforcurrentdojo", dojo.getNinjas());
		return "dojos/dojo.jsp";
	}
	@RequestMapping("/create")
	public String formDojo(@ModelAttribute("dojo") Dojo dojo) {
		
		return "dojos/new.jsp";
	}
	
	@RequestMapping("/createdojo")
	public String createmodelDojo(@Valid @ModelAttribute("dojo") Dojo dojo,@ModelAttribute("ninja") Ninja ninja,BindingResult result) {
		if (result.hasErrors()) {	
			return "dojos/new.jsp";
		}else {
			dojoService.createDojo(dojo);
			return "redirect:/dojos";

		}
		
	}
	

}
