package com.project.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.PruebaDao;

@Service
public class PruebaBo {
	
	@Autowired
	PruebaDao pruebaDao;
	
	public String consultaBo() throws Exception {
		return pruebaDao.testing();
//		return pruebaDao.consultaDao();
	} 
}
