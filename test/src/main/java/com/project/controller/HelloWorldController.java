package com.project.controller;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.bo.PruebaBo;

@Controller
public class HelloWorldController {
	
	@Autowired
	PruebaBo pruebaBo;

	@RequestMapping("/hello")
	public ModelAndView welcomeMessage(
			@RequestParam(value = "name", required = false) String name) {
		// Name of your jsp file as parameter
		ModelAndView view = new ModelAndView("hello");
		view.addObject("name", name);
		return view;
	}
	
	@RequestMapping(value="/prueba", method = RequestMethod.GET)
	@ResponseBody
	public String test() throws Exception {
		return JSONObject.quote(pruebaBo.consultaBo());
//		return JSONObject.quote(":X");
	}
}