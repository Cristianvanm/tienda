package com.bosque.tienda;
import com.bosque.DAO.UsuarioDAO;
import com.bosque.DTO.Usuarios;
import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

// inyectamos con @ dependencias que permiten la construccion de la API
@RestController
@RequestMapping("/Usuarios")
public class UsuarioController {
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	//Para consumir la API la ruta es:   url: http://localhost:8080/Usuarios/Lista
	@RequestMapping("/Lista")
	public ArrayList<Usuarios> listaUsuario(){
		return usuarioDAO.listUsers();
	}
	
	//HTTP CRUD de http
    //Create=Post
	@PostMapping
	public Usuarios createUser(@RequestBody Usuarios usuario) { //http://localhost:8080/Usuarios
		// se recibe un usuario del formato Json, basandonos en el requestbody del Swaguer
		usuarioDAO.saveUser(usuario);
		return usuario;
	}
	@GetMapping(value="{cedula}")
	public Usuarios userByID(@PathVariable("cedula")int cedula) {
		return usuarioDAO.readUserByID(cedula);
	}
	//update = put
	@PutMapping
	public Usuarios updateUser(@RequestBody Usuarios usuario) {
		
		usuarioDAO.updateUser(usuario);
		return usuario;
		
	}
	@DeleteMapping(value="{cedula}")
	public void deleteUser(@PathVariable("cedula")int cedula) {
		 usuarioDAO.deleteUser(cedula);
	}
}
