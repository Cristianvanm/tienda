package com.bosque.DAO;

import java.util.ArrayList;

import com.bosque.DTO.Clientes;
import com.bosque.DTO.Ventas;
import com.bosque.DTO.VentasPorCliente;

public class VentasPorClienteDAO {
	
	public  ArrayList<VentasPorCliente> listaVentasPorCliente(){
		VentasPorCliente ventas = new VentasPorCliente();	
	ArrayList<VentasPorCliente> list = new ArrayList<VentasPorCliente>();
	VentasDAO ventasDAO = new VentasDAO();
	
	ArrayList<Ventas> listaVentas = ventasDAO.listVentas();
	double acumulado = 0;
	for (int i = 0; i < listaVentas.size(); i++) {
		Ventas venta = listaVentas.get(i);
		int cedula = venta.getbCedulaCliente();
		double valor = venta.geteTotalVenta();
		String nombre = buscarNombre(cedula);
		acumulado = valor+acumulado;
		ventas.setaCedulaCliente(cedula);
		ventas.setbNombreCliente(nombre);
		ventas.setcTotalCliente(valor);
		ventas.setcTotal(acumulado);
		list.add(ventas);
	}
	
	return list;
}
	
	private String  buscarNombre(int cedula) {
		ArrayList<Clientes> lista = obtenerLista();
		int pos = -1;
		System.out.println("Digitar cédula del cliente");
			
			for (int i=0; i<lista.size(); i++) {
				Clientes clienteActual = lista.get(i);
				int cedulaActual=clienteActual.getCedulaCliente();
				if (cedula == cedulaActual){
					pos=i;
					}
				break;
			}
		     Clientes clienteActual = lista.get(1);
			String nombre = clienteActual.getNombreCliente();
		return nombre;
	}
	public ArrayList<Clientes> obtenerLista(){
		ClienteDAO clienteDAO = new ClienteDAO();
		ArrayList<Clientes> lista;
		lista = clienteDAO.listClientes();
		return lista;
	}
}