package com.bosque.tienda;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.bosque.DAO.VentasDAO;
import com.bosque.DTO.Clientes;
import com.bosque.DTO.Ventas;
//localhost:8080/Ventas/Lista
@RestController
@RequestMapping("/Ventas")
public class VentasController {
	VentasDAO ventasDAO = new VentasDAO();
	
@RequestMapping("/Lista")
	
	public ArrayList<Ventas> listaVentas(){
		return ventasDAO.listVentas();
}

@RequestMapping("/Cod")

public Ventas ventas(){
	return ventasDAO.ventaActual();
}
	@PostMapping
	public Ventas createVentas(@RequestBody Ventas venta) { //http://localhost:8080/Ventas
		
		System.out.println(venta.getbCedulaCliente()); 
		System.out.println(venta.getcCedulaUsuario()); 
		System.out.println(venta.getdIvaVenta()); 
		System.out.println(venta.geteTotalVenta()); 
		System.out.println(venta.getfValorVenta()); 
		ventasDAO.saveVentas(venta);
		return venta;
	}
}
