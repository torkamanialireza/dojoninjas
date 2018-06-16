package com.alireza.dojoninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alireza.dojoninjas.models.Dojo;
import com.alireza.dojoninjas.models.Ninja;
import com.alireza.dojoninjas.services.DojoService;
import com.alireza.dojoninjas.services.NinjaService;

@Controller
@RequestMapping("/ninjas")
public class NinjaController {
	private final DojoService dojoService;
	private final NinjaService ninjaService;
	public NinjaController(DojoService dojoService, NinjaService ninjaService) {
		this.dojoService = dojoService;
		this.ninjaService = ninjaService;
	}
	@RequestMapping("")
	public String showNinjas() {
		return "ninjas/index.jsp";
	}
	@RequestMapping("/new")
	public String newfromNinjas(Model model) {
		List <Dojo> dojos = dojoService.allDojos();
		model.addAttribute("dojos", dojos);	
		return "ninjas/new.jsp";
	}
	@RequestMapping("/createninja")
	public String createmodelDojo(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if (result.hasErrors()) {	
			return "ninjas/new.jsp";
		}else {
			ninjaService.creatNinja(ninja);
			return "redirect:/ninjas/new";

		}
		
	}
	

}
