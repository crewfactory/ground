package com.crewfactory.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SupportController {
	
	@RequestMapping(value="support/trcs.do")
	String class1(Model model) {	
		return "support/trcs";
	}
	
	@RequestMapping(value="support/trcsedu.do")
	String edu (Model model) {	
		return "support/trcsedu";
	}
	
	@RequestMapping(value="support/jgsrecruit.do")
	String jrecruit (Model model) {	
		return "support/jgsrecruit";
	}
	
	@RequestMapping(value="support/system.do")
	String system (Model model) {	
		return "support/system";
	}

}
