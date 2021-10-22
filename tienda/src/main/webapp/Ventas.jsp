<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@page session="true"  %>
<!DOCTYPE html>
<html>
<head>
    <!-- http://localhost:8080/GestionUsuarios.jsp-->
	<meta charset="ISO-8859-1">
	<title>LISTADO USUARIOS TIENDA DOÑA GALLINA</title>
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
	<link rel="stylesheet" href="css/table.css">
	<link rel="stylesheet" href="css/nave.css">
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
    <e>---------GESTION DE VENTAS TIENDA DOÑA GALLINA---------</e><!--elementos de la lista-->
      
    <hr>
     <ul>
        <li><a href="GestionVentas.jsp">Registrar Venta</a></li>
        
        <li><a href="ListarVentas.jsp">Tabla</a></li>
         
         <li><a href="paginaInicial.jsp">Volver</a></li>
               
    </ul>
     <!-- contenido de la pagina -->
     
     
     <!-- Scripts -->
	 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script src="scripts/table.js"></script>
</body>
</html>
