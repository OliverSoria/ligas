package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InicioController {
	
	@RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
	public String home(Model model) {
		return "jsp/inicio/inicio";
	}
	
//	@RequestMapping(value="/prueba", method = RequestMethod.GET)
//	@ResponseBody
//	public String test() throws Exception {
//		return JSONObject.quote(pruebaBo.consultaBo());
//	}
}
