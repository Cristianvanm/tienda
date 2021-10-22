package com.bosque.DAO;

import java.util.ArrayList;

import com.bosque.DTO.Login;
import com.bosque.DTO.LoginApi;
import com.bosque.DTO.Usuarios;
import com.bosque.DTO.Ventas;

public class LoginDAO {
	 
	public int loguear(String usuario, String contraseña) {
		ArrayList<Usuarios> lista = obtenerLista();
		 String l = "f";
		 int caso=0;
		 if (usuario.equals("admininicial") && contraseña.equals("admin123456")) {
			 l = "s";
		 }
		for (int i=0; i<lista.size(); i++) {
			 Usuarios usuarioActual = lista.get(i);
			 if (usuario.equals(usuarioActual.getUsuario()) && contraseña.equals(usuarioActual.getPassword())) {
				 int cedulaActual =usuarioActual.getCedulaUsuario();
				  
				 int ced = Login.setCedulaUsuario(cedulaActual);

				 System.out.println(ced);
				l = "s";
				}
			 else if(usuario.equals("admininicial") && contraseña.equals("admin123456")) {
				 l = "s";
			 }
			 else {
					l = "f";
			 }
		if (l.equals("s")) {
			break;
		}
		}
		if(l.equals("s")){
			 caso = 1;
			System.out.println("Bienvenido a Tienda doña Gallina");
			
			
		} else if (l.equals("f")) {
			 caso = 2;
				System.out.println("Usuario o contraseña errados, intente de nuevo");
			}
		return caso;
		}
	
	public LoginApi ceduli() {
		LoginApi log = new LoginApi();
		int ced =Login.getCedulaUsuario();
		System.out.println(ced);
		log.setCedulaUser(ced);
		return log;
	}


	private ArrayList<Usuarios> obtenerLista() {
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		ArrayList<Usuarios> lista;
		lista = usuarioDAO.listUsers();
		return lista;
		
	}

	
}
