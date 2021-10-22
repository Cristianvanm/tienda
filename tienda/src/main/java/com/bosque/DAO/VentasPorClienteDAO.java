package com.bosque.DAO;

import java.util.ArrayList;

import com.bosque.DTO.Clientes;
import com.bosque.DTO.Ventas;
import com.bosque.DTO.VentasPorCliente;

public class VentasPorClienteDAO {
	
	public  ArrayList<VentasPorCliente> listaVentasPorCliente(){
	ArrayList<VentasPorCliente> list = new ArrayList<VentasPorCliente>();
	VentasDAO ventasDAO = new VentasDAO();
	ArrayList<Ventas> listaVentas = ventasDAO.listVentas();
	for (int i = 0; i < listaVentas.size(); i++) {
		Ventas venta = listaVentas.get(i);
		
		int cedula = venta.getbCedulaCliente();
		
		ArrayList listado = new ArrayList();
		
		//list.add(ventaCliente);
	}
	
	return list;
}
	
	private String  buscarPosicion(int cedula) {
		ArrayList<Clientes> lista = obtenerLista();
		int pos = -1;
		System.out.println("Digitar cédula del cliente");
		
			int cedulaCliente = ingreso.nextInt();
			for (int i=0; i<lista.size(); i++) {
				Clientes clienteActual = lista.get(i);
				int cedulaActual=clienteActual.getCedulaCliente();
				if (cedula == cedulaActual){
				String nombre = clienteActual.getNombreCliente();	
					
				}
				break;
			}
		
		return nombre;
	}
	public ArrayList<Clientes> obtenerLista(){
		ClienteDAO clienteDAO = new ClienteDAO();
		ArrayList<Clientes> lista;
		lista = clienteDAO.listClientes();
		return lista;
	}
}