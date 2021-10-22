package com.bosque.tienda;

import com.bosque.DAO.ClienteDAO;
import com.bosque.DTO.Clientes;
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
@RestController
@RequestMapping("/Clientes") // http://localhost:8080/Clientes/Lista
public class ClienteController {
	ClienteDAO clienteDAO = new ClienteDAO();
	@RequestMapping("/Lista")
	
	public ArrayList<Clientes> listaCliente(){
		return clienteDAO.listClientes();
}
	@PostMapping
	public Clientes createCliente(@RequestBody Clientes cliente) {
		
		clienteDAO.saveCliente(cliente);
		return cliente;
	}
	@GetMapping(value="{cedula}")
	public Clientes clienteByID(@PathVariable("cedula")int cedula) {
		
		return clienteDAO.readClienteByID(cedula);
	}
	@PutMapping
	public Clientes updateCliente(@RequestBody Clientes cliente) {
		
		clienteDAO.updateCliente(cliente);
		return cliente;
		
	}
	@DeleteMapping(value="{cedula}")
	public void deleteCliente(@PathVariable("cedula")int cedula) {
		 clienteDAO.deleteCliente(cedula);
	}
}

