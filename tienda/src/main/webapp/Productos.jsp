<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page session="true"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page import="com.bosque.DTO.Productos" %>
<!DOCTYPE html>
<html>
<head>
    <!-- http://localhost:8080/Productos.jsp-->
	<meta charset="ISO-8859-1">
	<title>Archivo Productos</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	 <script type="text/javascript" src="scripts/file.js"></script>
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
	<link rel="stylesheet" href="css/archivo.css">
	<link rel="stylesheet" href="css/nave.css">
	 <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=ZCOOL+KuaiLe&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<%                                                     
     HttpSession sesion = request.getSession();
     String usuario;
     if(sesion.getAttribute("user")==null){
    	 out.print("<script>location.replace('Login.jsp');</script>");
     }
     else{
    	 usuario=sesion.getAttribute("user").toString();
    	 out.print("<a href='Login.jsp?cerrar=true'><h5>Cerrar Sesion</h5></a>");
     }
%>

         <nav id="navprin"> <br> <br> <br><br> <br></nav>
      
     <nav  >
      <div class="btn-group">
      <button type="button" onclick="location.href='GestionUsuarios.jsp';"  id="Usuarios" class="btn btn-secondary">Usuarios</button>
     </div>
      <div class="btn-group">
      <button type="button" onclick="location.href='GestionClientes.jsp';" id="Clientes" class="btn btn-secondary">Clientes</button>
      </div>
       <div class="btn-group">
      <button type="button" onclick="location.href='GestionProveedores.jsp';" id="Proveedores" class="btn btn-secondary">Proveedores</button>
      </div>
       <div class="btn-group">
      <button type="button" onclick="location.href='Productos.jsp';" id="Productos" class="btn btn-secondary">Productos</button>
      </div>
       <div class="btn-group">
      <button type="button" onclick="location.href='GestionVentas.jsp';" id="Ventas" class="btn btn-secondary">Ventas</button>
      </div>
       <div class="btn-group">
      <button type="button" onclick="location.href='GestionReportes.jsp';" id="Reportes" class="btn btn-secondary">Reportes</button>
	  </div>




</nav>
     
    <e>---------SELECCIONAR ARCHIVO DE PRODUCTOS---------</e><!--elementos de la lista-->
    <hr>
     <ul>
     
        <li><a href="paginaInicial.jsp">Volver</a></li><!--elementos de la lista-->
         <li><a href="ListarProductos.jsp">Ver tabla</a></li>
      
    </ul>
    <form name="formulario" method="post" enctype="multipart/form-data" action="Productos/cargar">
        <table>
        <tr>
        <td>Seleccione archivo</td><td><input type="file"  onchange="cargarArchivo(this)" name="file" accept=".csv"></td>
        </tr>
        <tr>
        <td colspan=2> <input type="submit" name="proceso" value="Cargar Archivo"/></td>
        </tr>
        </table>
    
    </form>
   
        <div id ="file"></div>
        <div style ="color:red">${errorCargaArchivo}</div>
        <div style ="color:blue">${cargaArchivo}</div>
     <!-- Scripts -->
     	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
     
	 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script src="scripts/file.js"></script>
</body>
</html>