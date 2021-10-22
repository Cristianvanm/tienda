package com.bosque.DTO;

public class Login {
	
	     private static int cedulaUsuario;

	public static int getCedulaUsuario() {
		return cedulaUsuario;
	}

	public static int setCedulaUsuario(int cedulaUsuario) {
		Login.cedulaUsuario = cedulaUsuario;
		return cedulaUsuario;
	}
}
