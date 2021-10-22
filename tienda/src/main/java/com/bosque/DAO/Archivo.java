package com.bosque.DAO;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import com.bosque.DTO.Productos;

public class Archivo {
	
public  ArrayList<Productos> arc() {
	ArrayList<Productos> listaProducto = new ArrayList<Productos>();
	Productos productos = new Productos();
	ProductosDAO productosDAO = new ProductosDAO();
	try {
		String ubicacion = "prod.csv";
		FileReader archivo = new FileReader(new File(ubicacion));
		BufferedReader lector= new BufferedReader(archivo );
		String  linea = lector.readLine();
		
		while (linea !=null) {
			String [] datos = linea.split(",");
			int codigoProducto = (int) Long.parseLong(datos[0]);   
			
			double ivaCompra = Long.parseLong(datos[4]);
			int nitProveedor = (int) Long.parseLong(datos[2]);
			String nombreProducto = datos[1];
			
			double precioCompra = Long.parseLong(datos[3]);
			double precioVenta = Long.parseLong(datos[5]);
			
			productos.setCodigoProducto(codigoProducto);
			productos.setIvaCompra(ivaCompra);
			productos.setNitProveedor(nitProveedor);
			productos.setNombreProducto(nombreProducto);
			productos.setPrecioCompra(precioCompra);
			productos.setPrecioVenta(precioVenta);
			linea=lector.readLine();
			productosDAO.csvCarga(productos);
			listaProducto.add(productos);
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return listaProducto;
	}

public static ArrayList<Productos> arch(InputStream inputStream) {
	ArrayList<Productos> listaProducto = new ArrayList<Productos>();
	Productos productos = new Productos();
	ProductosDAO productosDAO = new ProductosDAO();
	System.out.println("prueba");
	try {
				
		BufferedReader lector= new BufferedReader(new InputStreamReader(inputStream,"UTF-8") );
		String  linea = lector.readLine();
		while (linea !=null) {
			String [] datos = linea.split(",");
			int codigoProducto = (int) Long.parseLong(datos[0]);   
			double ivaCompra = Long.parseLong(datos[4]);
			int nitProveedor = (int) Long.parseLong(datos[2]);
			String nombreProducto = datos[1];
			double precioCompra = Long.parseLong(datos[3]);
			double precioVenta = Long.parseLong(datos[5]);
			
			productos.setCodigoProducto(codigoProducto);
			productos.setIvaCompra(ivaCompra);
			productos.setNitProveedor(nitProveedor);
			productos.setNombreProducto(nombreProducto);
			productos.setPrecioCompra(precioCompra);
			productos.setPrecioVenta(precioVenta);
			linea=lector.readLine();
			productosDAO.csvCarga(productos);
			listaProducto.add(productos);
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
}
        
}
