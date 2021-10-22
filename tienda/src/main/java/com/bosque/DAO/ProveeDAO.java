package com.bosque.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;


import com.bosque.DTO.Provee;

public class ProveeDAO {
	public ArrayList<Provee> listProveedores(){
		ArrayList<Provee> listaProveedores = new ArrayList<Provee>();
		Connection conn = new Connection();
		
		try {
			PreparedStatement statement = conn.getConnection().prepareStatement("SELECT * FROM proveedores");
			ResultSet result = statement.executeQuery();
			while(result.next()) {
				Provee provee = new Provee();
				provee.setAcednit(Integer.parseInt(result.getString("nitproveedor"))); 
				provee.setBciudad(result.getString("ciudad_proveedor")); 
				provee.setCdireccion(result.getString("direccion_proveedor")); 
				provee.setDemail(result.getString("nombre_proveedor")); 
				provee.setEtelefono(result.getString("telefono_proveedor")); 
				listaProveedores.add(provee);
				
			}
			result.close();
			statement.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"no se pudo realizar la consulta\n"+e);
		} 
		return listaProveedores;
	}
	public Provee saveProveedor(Provee provee) {
		Connection conn = new Connection();
		
		try {
			String query = "INSERT INTO proveedores VALUES(?,?,?,?,?)";
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			
			pstmt.setInt(1, provee.getAcednit());
			pstmt.setString(2, provee.getBciudad());
			pstmt.setString(3, provee.getCdireccion());
			pstmt.setString(4, provee.getDemail());
			pstmt.setString(5, provee.getEtelefono());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.getMessage();
		}
		return provee;
	}
	
	public Provee readProveedor(int acednit) {
		Connection conn = new Connection();
		Provee provee = new Provee();
		try {
			String query = "SELECT * FROM proveedores WHERE nitproveedor=?";
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setInt(1, acednit);
			ResultSet result =pstmt.executeQuery();
			while(result.next()) {
				provee.setAcednit(Integer.parseInt(result.getString("nitproveedor"))); 
				provee.setBciudad(result.getString("ciudad_proveedor")); 
				provee.setCdireccion(result.getString("direccion_proveedor")); 
				provee.setDemail(result.getString("nombre_proveedor")); 
				provee.setEtelefono(result.getString("telefono_proveedor")); 
			}
			result.close();
			pstmt.close();
		} catch (SQLException e) {
			e.getMessage();
		}
		return provee;
	}
	public void updateProveedor(Provee provee) {
		Connection conn = new Connection();
		System.out.println(provee.getBciudad());
		try {
			String query = "UPDATE proveedores SET  ciudad_proveedor=?, direccion_proveedor=?, nombre_proveedor=?, telefono_proveedor=?  WHERE nitproveedor=?"; 
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setString(1, provee.getBciudad());
			pstmt.setString(2, provee.getCdireccion());
			pstmt.setString(3, provee.getDemail());
			pstmt.setString(4, provee.getEtelefono());
			pstmt.setInt(5, provee.getAcednit());
			pstmt.execute();
		
		} catch (SQLException e) {
			e.getMessage();
		}
		
	}
	public void deleteProveedor(int acednit) {
	     Connection conn = new Connection();
			try {
				String query = "DELETE FROM proveedores WHERE nitproveedor=?"; 
				PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
				pstmt.setInt(1, acednit);
				pstmt.executeUpdate();
				} catch (SQLException e) {
				e.getMessage();
			}
			}
}
