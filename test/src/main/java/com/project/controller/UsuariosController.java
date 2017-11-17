package com.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.bo.UsuariosBo;
import com.project.dto.UsuarioDto;

@Controller
@RequestMapping("/admin")
public class UsuariosController {
	
	@Autowired
	UsuariosBo usuariosBo;
	
	@RequestMapping("/usuarios")
	public ModelAndView welcomeMessage() {
		// Name of your jsp file as parameter
		ModelAndView view = new ModelAndView("usuarios");
		return view;
	}
	
	@RequestMapping(value="/usuarios/consulta", method = RequestMethod.GET)
	public @ResponseBody ArrayList<UsuarioDto> consultaUsuarios() throws Exception {
		return usuariosBo.getUsers();
	}
}
