package com.bosque.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

import com.bosque.DTO.Clientes;

import java.sql.*;
import java.util.ArrayList;

public class ClienteDAO {
	
	public ArrayList<Clientes> listClientes(){
		ArrayList<Clientes> listaClientes = new ArrayList<Clientes>();
		Connection conn = new Connection();
		
		try {
			PreparedStatement statement = conn.getConnection().prepareStatement("SELECT * FROM clientes");
			ResultSet result = statement.executeQuery();
			while(result.next()) {
				Clientes cliente = new Clientes();
				cliente .setCedulaCliente(Integer.parseInt(result.getString("cedula_cliente")));
				cliente .setDireccionCliente(result.getString("direccion_cliente"));
				cliente .setEmailCliente(result.getString("email_cliente"));
				cliente .setNombreCliente(result.getString("nombre_cliente"));
				cliente .setTelefonoCliente(result.getString("telefono_cliente"));
				listaClientes.add(cliente);
				
			}
			result.close();
			statement.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"no se pudo realizar la consulta\n"+e);
		} 
		return listaClientes;
	}
	
      public void borrarCliente() {
		
		String query = "DELETE FROM clientes WHERE cedula_cliente=?";
		Connection conn = new Connection();
		Clientes cliente = new Clientes();
		try {
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setInt(1, cliente.getCedulaCliente());
			pstmt.execute();
			
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"Paila, no pudimos eliminar\n"+e);
		}
		
  	}
	public Clientes saveCliente(Clientes cliente) {
		Connection conn = new Connection();
		
		try {
			String query = "INSERT INTO clientes VALUES(?,?,?,?,?)";
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setInt(1, cliente.getCedulaCliente());
			pstmt.setString(2, cliente.getDireccionCliente());
			pstmt.setString(3, cliente.getEmailCliente());
			pstmt.setString(4, cliente.getNombreCliente());
			pstmt.setString(5, cliente.getTelefonoCliente());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.getMessage();
		}
		return cliente;
	}
	
	//Busqueda en la base de datos por cedula
	public Clientes readClienteByID(int cedula) {
		Connection conn = new Connection();
		Clientes cliente = new Clientes();
		try {
			String query = "SELECT * FROM clientes WHERE cedula_cliente=?";
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setInt(1, cedula);
			ResultSet result =pstmt.executeQuery();
			while(result.next()) {
				cliente.setCedulaCliente(Integer.parseInt(result.getString("cedula_cliente"))); 
				cliente.setDireccionCliente(result.getString("direccion_cliente"));
				cliente.setEmailCliente(result.getString("email_cliente"));
				cliente.setNombreCliente(result.getString("nombre_cliente"));
				cliente.setTelefonoCliente(result.getString("telefono_cliente"));
			}
			result.close();
			pstmt.close();
		} catch (SQLException e) {
			e.getMessage();
		}
		return cliente;
	}
	public void updateCliente(Clientes cliente) {
		Connection conn = new Connection();
		
		try {
			String query = "UPDATE clientes SET  direccion_cliente=?, email_cliente=?, nombre_cliente=?, telefono_cliente=?  WHERE cedula_cliente=?"; 
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setString(1, cliente.getDireccionCliente());
			pstmt.setString(2, cliente.getEmailCliente());
			pstmt.setString(3, cliente.getNombreCliente());
			pstmt.setString(4, cliente.getTelefonoCliente());
			pstmt.setInt(5, cliente.getCedulaCliente());
			pstmt.execute();
			
		} catch (SQLException e) {
			e.getMessage();
		}
		
	}

	public void deleteCliente(int cedula) {
     Connection conn = new Connection();
		try {
			String query = "DELETE FROM clientes WHERE cedula_cliente=?"; 
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setInt(1, cedula);
			pstmt.executeUpdate();
			} catch (SQLException e) {
			e.getMessage();
		}
		}

}
