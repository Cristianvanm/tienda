package com.bosque.DAO;
import com.bosque.DTO.Usuarios;

import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;
public class UsuarioDAO {
	
	public ArrayList<Usuarios> listUsers(){
		ArrayList<Usuarios> listaUsuarios = new ArrayList<Usuarios>();
		Connection conn = new Connection();
		
		try {
			PreparedStatement statement = conn.getConnection().prepareStatement("SELECT * FROM usuarios");
			ResultSet result = statement.executeQuery();
			while(result.next()) {
				Usuarios usuario = new Usuarios();
				usuario.setCedulaUsuario(Integer.parseInt(result.getString("cedula_usuario")));
				usuario.setEmailUsuario(result.getString("email_usuario"));
				usuario.setNombreUsuario(result.getString("nombre_usuario"));
				usuario.setPassword(result.getString("password"));
				usuario.setUsuario(result.getString("usuario"));
				listaUsuarios.add(usuario);
				
			}
			result.close();
			statement.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"no se pudo realizar la consulta\n"+e);
		} 
		return listaUsuarios;
	}
	
      public void borrarUsuario() {
		
		String query = "DELETE FROM usuarios WHERE cedula_ciudadania=?";
		Connection conn = new Connection();
		Usuarios usuario = new Usuarios();
		try {
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setInt(1, usuario.getCedulaUsuario());
			pstmt.execute();
			
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"Paila, no pudimos eliminar\n"+e);
		}
		
  	}
	public Usuarios saveUser(Usuarios usuario) {
		Connection conn = new Connection();
		
		try {
			String query = "INSERT INTO usuarios VALUES(?,?,?,?,?)";
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setInt(1, usuario.getCedulaUsuario());
			pstmt.setString(2, usuario.getEmailUsuario());
			pstmt.setString(3, usuario.getNombreUsuario());
			pstmt.setString(4, usuario.getPassword());
			pstmt.setString(5, usuario.getUsuario());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.getMessage();
		}
		return usuario;
	}
	
	//Busqueda en la base de datos por cedula
	public Usuarios readUserByID(int cedula) {
		Connection conn = new Connection();
		Usuarios usuario = new Usuarios();
		try {
			String query = "SELECT * FROM usuarios WHERE cedula_usuario=?";
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setInt(1, cedula);
			ResultSet result =pstmt.executeQuery();
			while(result.next()) {
				usuario.setCedulaUsuario(Integer.parseInt(result.getString("cedula_usuario")));
				usuario.setEmailUsuario(result.getString("email_usuario"));
				usuario.setNombreUsuario(result.getString("nombre_usuario"));
				usuario.setPassword(result.getString("password"));
				usuario.setUsuario(result.getString("usuario"));
			}
			result.close();
			pstmt.close();
		} catch (SQLException e) {
			e.getMessage();
		}
		return usuario;
	}
	public void updateUser(Usuarios usuario) {
		Connection conn = new Connection();
		
		try {
			String query = "UPDATE usuarios SET  email_usuario=?, nombre_usuario=?, password=?, usuario=?  WHERE cedula_usuario=?"; 
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setString(1, usuario.getEmailUsuario());
			pstmt.setString(2, usuario.getNombreUsuario());
			pstmt.setString(3, usuario.getPassword());
			pstmt.setString(4, usuario.getUsuario());
			pstmt.setInt(5, usuario.getCedulaUsuario());
			pstmt.execute();
			
		} catch (SQLException e) {
			e.getMessage();
		}
		
	}

	public void deleteUser(int cedula) {
     Connection conn = new Connection();
		try {
			String query = "DELETE FROM usuarios WHERE cedula_usuario=?"; 
			PreparedStatement pstmt = conn.getConnection().prepareStatement(query);
			pstmt.setInt(1, cedula);
			pstmt.executeUpdate();
			} catch (SQLException e) {
			e.getMessage();
		}
		}
	
}
