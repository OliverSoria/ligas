package com.project.bo;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.UsuariosDao;
import com.project.dto.UsuarioDto;

@Service
public class UsuariosBo {
	
	@Autowired
	UsuariosDao usuariosDao;
	
	public ArrayList<UsuarioDto> getUsers() throws Exception {
		
		ArrayList<UsuarioDto> retorno = null;
		
		try {
			retorno = usuariosDao.selectUsuarios();
		} catch (Exception e) {
			throw e;
		}
		
		return retorno;
	}

}
