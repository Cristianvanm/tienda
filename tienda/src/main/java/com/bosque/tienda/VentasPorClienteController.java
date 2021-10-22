package com.bosque.tienda;

import java.util.ArrayList;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bosque.DAO.VentasDAO;
import com.bosque.DAO.VentasPorClienteDAO;

import com.bosque.DTO.VentasPorCliente;



@RestController
@RequestMapping("/Ventascliente") // http://localhost:8080/Clientes/Lista
public class VentasPorClienteController {
	VentasPorClienteDAO ventasPorClienteDAO = new VentasPorClienteDAO();
	VentasDAO ventasDAO = new VentasDAO();
@RequestMapping("/Lista")
	
	public ArrayList<VentasPorCliente> listaVentas(){
	return ventasPorClienteDAO.listaVentasPorCliente();
}

}
