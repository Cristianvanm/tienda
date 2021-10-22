package com.bosque.tienda;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.bosque.DAO.Archivo;
import com.bosque.DAO.Connection;


@SpringBootApplication
public class TiendaApplication {

	
	public static void main(String[] args)  {
		
		Archivo archivo = new Archivo();
		SpringApplication.run(TiendaApplication.class, args);
		Connection conn = new Connection();
		conn.getConnection();
		new TiendaApplication();
		
		//vistaLogin.iniciar();
		archivo.arc();
	}
}
