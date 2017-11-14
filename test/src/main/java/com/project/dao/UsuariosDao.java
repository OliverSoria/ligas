package com.project.dao;

import java.util.ArrayList;

import com.project.dto.UsuarioDto;

public interface UsuariosDao {
	ArrayList<UsuarioDto> selectUsuarios() throws Exception;
	void insertUsuario(UsuarioDto usuario) throws Exception;
	void updateUsuario(UsuarioDto usuario) throws Exception;
	void deleteUsuario(UsuarioDto usuario) throws Exception;
}
