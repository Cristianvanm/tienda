package com.bosque.tienda;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.bosque.DAO.ProveeDAO;

import com.bosque.DTO.Provee;

@RestController
@RequestMapping("/Provee") // http://localhost:8080/Provee/Lista
public class ProveeController {
	ProveeDAO proveeDAO = new ProveeDAO();
	@RequestMapping("/Lista")
	
	public ArrayList<Provee> listaProveedor(){
		return proveeDAO.listProveedores();
}
	@PostMapping
	public Provee createProveedor(@RequestBody Provee provee) {
		
		proveeDAO.saveProveedor(provee);
		return provee;
	}
	@GetMapping(value="{acednit}")
	public Provee proveedorByID(@PathVariable("acednit")int acednit) {
		return proveeDAO.readProveedor(acednit);
	}
	@PutMapping
	public Provee updateProveedor(@RequestBody Provee provee) {
		
		proveeDAO.updateProveedor(provee);
		return provee;
		
	}
	@DeleteMapping(value="{acednit}")
	public void deleteCliente(@PathVariable("acednit")int acednit) {
		 proveeDAO.deleteProveedor(acednit);
	}
}
