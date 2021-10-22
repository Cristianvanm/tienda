package com.bosque.DAO;

import java.util.ArrayList;

import com.bosque.DTO.Clientes;
import com.bosque.DTO.Ventas;
import com.bosque.DTO.VentasPorCliente;

public class VentasPorClienteDAO {
	
	public  ArrayList<VentasPorCliente> listaVentasPorCliente(){
	ArrayList<VentasPorCliente> list = new ArrayList<VentasPorCliente>();
	
	VentasDAO ventasDAO = new VentasDAO();
    double acumuladoTotal = 0;
	ArrayList<Ventas> listaVentas = ventasDAO.listVentas();
	ArrayList<Integer> listaCedulas = new ArrayList<Integer>();
	ArrayList<String> listaNombres = new ArrayList<String>();
	ArrayList<Double> listaValores = new ArrayList<Double>();
	
	for (int i = 0; i < listaVentas.size(); i++) {
		Ventas venta = listaVentas.get(i);
		int cedula = venta.getbCedulaCliente();
		String nombre = buscarNombre(cedula);
		if (listaCedulas.contains(cedula)) {
			
		}
		else {
			listaCedulas.add(cedula);
			listaNombres.add(nombre);
		}
	}
	System.out.println(listaCedulas);
	System.out.println(listaNombres);
	for (int j = 0; j < listaCedulas.size(); j++) {
		
		int cedula2 = listaCedulas.get(j);
		double acumulado = 0;
		for (int k = 0; k < listaVentas.size(); k++) {
			
			Ventas venta = listaVentas.get(k);
			int cedula3 = venta.getbCedulaCliente();
			if(cedula2==cedula3) {
				double valorVenta = venta.getfValorVenta();
				 acumulado = acumulado+valorVenta;
			}
		}
		listaValores.add(acumulado);
	}
	     System.out.println(listaValores);
	for (int l = 0; l < listaValores.size(); l++) {
		acumuladoTotal = acumuladoTotal + listaValores.get(l);
	}
	System.out.println(acumuladoTotal);
	
	for (int m = 0; m < listaCedulas.size(); m++) {
		VentasPorCliente vpc =  new VentasPorCliente ();
		
		
		vpc.setaCedulaCliente(listaCedulas.get(m));
	
		vpc.setbNombreCliente(listaNombres.get(m));

		vpc.setcTotalCliente(listaValores.get(m));
		
		vpc.setcTotal(acumuladoTotal);
		
		list.add(vpc);
	}
	
	return list;
}
	
	private String  buscarNombre(int cedula) {
		ArrayList<Clientes> lista = obtenerLista();
		int pos = -1;
					
			for (int i=0; i<lista.size(); i++) {
				Clientes clienteActual = lista.get(i);
				int cedulaActual=clienteActual.getCedulaCliente();
				if (cedula == cedulaActual){
					pos=i;
					}
				
			}
		     Clientes clienteActual = lista.get(pos);
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