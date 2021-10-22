package com.bosque.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import com.bosque.DTO.Clientes;
import com.bosque.DTO.Ventas;

public class VentasDAO {

	public Ventas saveVentas(Ventas venta) {
          Connection conn = new Connection();
		
		try {
			String query = "INSERT INTO tiendaGrupo60_1.ventas (cedula_cliente, cedula_usuario,ivaventa,total_venta,valor_venta) VALUES (?, ?, ?, ?, ?);";
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
		
			pstmt.setInt(1, venta.getbCedulaCliente());
			pstmt.setInt(2, venta.getcCedulaUsuario());
			pstmt.setDouble(3, venta.getdIvaVenta());
			pstmt.setDouble(4, venta.geteTotalVenta());
			pstmt.setDouble(5, venta.getfValorVenta());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.getMessage();
		}
		return venta;
	}

	public ArrayList<Ventas> listVentas() {
		ArrayList<Ventas> listaVentas = new ArrayList<Ventas>();
		Connection conn = new Connection();
		
		try {
			PreparedStatement statement = conn.getConnection().prepareStatement("SELECT * FROM ventas");
			ResultSet result = statement.executeQuery();
			while(result.next()) {
				Ventas ventas = new Ventas();
			    ventas.setaCodigo(Integer.parseInt(result.getString("codigo_venta")));
				ventas.setcCedulaCliente(Integer.parseInt(result.getString("cedula_cliente")));
				ventas.setcCedulaUsuario(Integer.parseInt(result.getString("cedula_usuario")));
				ventas.setdIvaVenta(Double.parseDouble(result.getString("ivaventa")));
				ventas.seteTotalVenta(Double.parseDouble(result.getString("total_venta")));
				ventas.setfValorVenta(Double.parseDouble(result.getString("valor_venta")));
				listaVentas.add(ventas);
				
			}
			result.close();
			statement.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"no se pudo realizar la consulta\n"+e);
		} 
		return listaVentas;
	}

	public Ventas ventaActual() {
		VentasDAO ventasDAO = new VentasDAO();
		ArrayList<Ventas> listaVentas = ventasDAO.listVentas();
		int i = 0;
		for (int j = 0; i < listaVentas.size(); j++) {
			i = i+1;
		}
			
		
		Ventas venta =	listaVentas.get(i-1); 
	       return venta;
	}
	
	
		
	}


