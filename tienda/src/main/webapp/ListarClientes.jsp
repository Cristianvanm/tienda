<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page session="true"  %>

<!DOCTYPE html>

<!-- http://localhost:8080/ListarClientes.jsp-->
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LISTADO CLIENTES TIENDA DO?A GALLINA</title>
	<link rel="stylesheet" href="css/tabla.css">
	<link rel="stylesheet" href="css/nave.css">
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
      <e>---------LISTADO CLIENTES---------</e><!--elementos de la lista-->
    <hr>
    <ul>
        <li><a href="GestionClientes.jsp">Volver</a></li><!--elementos de la lista-->
       
    </ul>
     <!--hr para ver la linea arriba-->
    <hr>
     <!-- contenido de la pagina -->
     <table id="tabla" class="table">
        <thead>
        <tr>
        	<th>Cedula</th>
        	<th>Direccion</th>
            <th>Email</th>
            <th>Nombre</th>
            <th>Telefono</th>
            <th>Opciones</th>
        </tr>
        		
        </thead>
        <tbody id="cuerpoTabla">
        		<!-- el cuerpo lo alimentamos desde java script -->
        </tbody>
     </table>
     <label id="direccionCliente"></label>
     <label id="emailCliente"></label>
     <label id="nombreCliente"></label>
     <label id="telefonoCliente"></label>
     
     
     <!-- Scripts -->
	 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script src="scripts/tablecliente.js"></script>
</body>
</html>