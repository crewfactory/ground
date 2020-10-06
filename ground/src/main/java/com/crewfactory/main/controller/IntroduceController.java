package com.crewfactory.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.crewfactory.main.service.ProfessorService;

@Controller
public class IntroduceController {
	
	@Autowired
	ProfessorService service;
	
	@RequestMapping(value="/introduce/intro.do")
	String init(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "introduce/intro";
	}
	
	@RequestMapping(value="/introduce/edu.do")
	String edu(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "introduce/edu";
	}
	
	@RequestMapping(value="/introduce/wis.do")
	String wis(Model model) {
		return "introduce/wis";
	}
	
	@RequestMapping(value="/introduce/wid.do")
	String wid(Model model) {
		return "introduce/wid";
	}
	
	@RequestMapping(value="/introduce/pro.do")
	String pro(Model model) throws Exception {
		model.addAttribute("pro", service.selectByWebHome());
		model.addAttribute("prolist", service.selectByWeb());
		return "introduce/pro"; 
	}
	
	@RequestMapping(value="/introduce/facil.do")
	String facil(Model model) {
		return "introduce/facil";
	}
	
	@RequestMapping(value="/introduce/corw.do")
	String corw (Model model) {
		return "introduce/corw";
	}
	
	@RequestMapping(value="/introduce/map.do")
	String map (Model model) {
		return "introduce/map";
	}
}
