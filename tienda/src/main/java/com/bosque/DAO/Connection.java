package com.bosque.DAO;
import java.sql.SQLException;
import java.sql.DriverManager;
public class Connection {
   
	    String database="tiendaGrupo60_1";
	    String user="root";
	    String password= "admin123";
	    String hostname= "tiendagrupo60.c47knbsonjdi.us-east-2.rds.amazonaws.com";
	    String port= "3306";
	    String url= "jdbc:mysql://" + hostname + ":" + port + "/" + database + "?user=" + user + "&password=" + password;
    java.sql.Connection connection = null;
	
    
    
    public java.sql.Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection(url);
            if(connection!=null) {
               System.out.println("Conexión exitosa a la base de datos");
               System.out.println("http://localhost:8080/Login.jsp");
               // System.out.println("Pagina de arranque: http://localhost:8080/Login.jsp");
            }
        }catch(SQLException e){
            e.getMessage();
        }catch(ClassNotFoundException e) {
            e.getMessage();
        }
        return connection;
    }

public void closeConnection() {
    try {
    	connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
}

