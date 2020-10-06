package com.crewfactory.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EducationController {
	
	@RequestMapping(value="/education/kogs.do")
	String class1 (Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/kogs";
	}
	
	@RequestMapping(value="/education/osgs.do")
	String class2 (Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/osgs";
	}
	
	@RequestMapping(value="/education/crsdcs.do")
	String class3 (Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/crsdcs";
	}
	
	@RequestMapping(value="/education/allpass.do")
	String class4 (Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/allpass";
	}
	
	@RequestMapping(value="/education/op.do")
	String op (Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/op";
	}
	
	@RequestMapping(value="/education/travel.do")
	String travel (Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/travel";
	}
	@RequestMapping(value="/education/spsp.do")
	String spsp (Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/spsp";
	}
}