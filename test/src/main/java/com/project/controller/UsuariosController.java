package com.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.bo.UsuariosBo;
import com.project.dto.UsuarioDto;

@Controller
@RequestMapping("/administrador")
public class UsuariosController {
	
	@Autowired
	UsuariosBo usuariosBo;
	
	@RequestMapping(value = "/usuarios", method = RequestMethod.GET)
	public String home(Model model) {
		return "jsp/usuarios/usuarios";
	}
	
	@RequestMapping(value="/usuarios/consulta", method = RequestMethod.GET)
	public @ResponseBody ArrayList<UsuarioDto> consultaUsuarios() throws Exception {
		return usuariosBo.getUsers();
	}
	
	@RequestMapping(value="/usuarios/alta", consumes = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.POST)
	public ResponseEntity altaUsuarios(@RequestBody UsuarioDto usuario) throws Exception {
		//usuariosBo.saveUser()
		System.out.println(usuario);
		// return JSONObject.quote("success!");
		return new ResponseEntity(HttpStatus.OK);
	}
}
