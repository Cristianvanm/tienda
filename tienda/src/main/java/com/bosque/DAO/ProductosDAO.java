package com.bosque.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import com.bosque.DTO.Clientes;
import com.bosque.DTO.Productos;
import com.bosque.DTO.Usuarios;

public class ProductosDAO {
	
	public ArrayList<Productos> listProduct(){
		ArrayList<Productos> listaProductos = new ArrayList<Productos>();
		Connection conn = new Connection();
		
		try {
			PreparedStatement statement = conn.getConnection().prepareStatement("SELECT * FROM productos");
			ResultSet result = statement.executeQuery();
			while(result.next()) {
				Productos producto = new Productos();
				producto.setCodigoProducto (Integer.parseInt(result.getString("codigo_producto")));
				producto.setIvaCompra (Double.parseDouble(result.getString("ivaventa")));
				producto.setNitProveedor (Integer.parseInt(result.getString("nitproveedor")));
				producto.setNombreProducto(result.getString("nombre_producto"));
				
				producto.setPrecioCompra(Double.parseDouble(result.getString("precio_compra")));
				producto.setPrecioVenta(Double.parseDouble(result.getString("precio_venta")));
				listaProductos.add(producto);
				
			}
			result.close();
			statement.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"no se pudo realizar la consulta\n"+e);
		} 
		return listaProductos;
	}
	public Productos csvCarga(Productos producto){
		
		Connection conn = new Connection();
			
				try {
					String sql = "INSERT INTO productos  VALUES (?,?,?,?,?,?)";
					PreparedStatement pstmt = conn.getConnection().prepareStatement(sql);
					
					pstmt.setInt(1, producto.getCodigoProducto());
					System.out.println(producto.getCodigoProducto());
					pstmt.setDouble(2, producto.getIvaCompra());
					System.out.println(producto.getIvaCompra());
					pstmt.setInt(3, producto.getNitProveedor());
					System.out.println(producto.getNitProveedor());
					pstmt.setString(4, producto.getNombreProducto());
					System.out.println(producto.getNombreProducto());
					pstmt.setDouble(5, producto.getPrecioCompra());
					System.out.println(producto.getPrecioCompra());
					pstmt.setDouble(6, producto.getPrecioVenta());
					System.out.println(producto.getPrecioVenta());
					pstmt.executeUpdate();
				
				} catch (SQLException e) {
					e.getMessage();
				}
				
			
		return producto;
	}
	public Productos readProductos(int codigo) {
		Connection conn = new Connection();
		Productos producto = new Productos();
		try {
			String query = "SELECT * FROM productos WHERE codigo_producto=?";
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setInt(1, codigo);
			ResultSet result =pstmt.executeQuery();
			while(result.next()) {
				producto.setCodigoProducto (Integer.parseInt(result.getString("codigo_producto")));
				producto.setIvaCompra (Double.parseDouble(result.getString("ivaventa")));
				producto.setNitProveedor (Integer.parseInt(result.getString("nitproveedor")));
				producto.setNombreProducto(result.getString("nombre_producto"));
				
				producto.setPrecioCompra(Double.parseDouble(result.getString("precio_compra")));
				producto.setPrecioVenta(Double.parseDouble(result.getString("precio_venta")));
				
			}
			result.close();
			pstmt.close();
		} catch (SQLException e) {
			e.getMessage();
		}
		return producto;
	}
	
	/*
	public ArrayList<Productos> listProductos(){
		ArrayList<Productos> listaProductos = new ArrayList<Productos>();
		Connection conn = new Connection();
		
		try {
			PreparedStatement statement = conn.getConnection().prepareStatement("SELECT * FROM productos");
			ResultSet result = statement.executeQuery();
			while(result.next()) {
				Productos producto = new Productos();
				producto.setCodigoProducto(Integer.parseInt(result.getString("codigo_producto")));
				producto.setIvaCompra(result.getDouble("ivacompra"));
				producto.setNitProveedor(result.getInt("nitproveedor"));
				producto.setNombreProducto(result.getString("nombre_producto"));
				producto.setPrecioCompra(result.getDouble("precio_compra"));
				producto.setPrecioVenta(result.getDouble("precio_venta"));
				listaProductos.add(producto);
				
			}
			result.close();
			statement.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"no se pudo realizar la consulta\n"+e);
		} 
		return listaProductos;
	}
*/
}
