<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page session="true"  %>          <!-- meter linea a los demas jsp pars seguridad-->
<!DOCTYPE html>
<html>
<head>
    <!-- http://localhost:8080/paginaInicial.jsp-->
	<meta charset="ISO-8859-1">
	<title>LISTADO USUARIOS TIENDA DOÑA GALLINA</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
	<link rel="stylesheet" href="css/table.css">
	<link rel="stylesheet" href="css/nave.css">
</head>
<body>
<!-- meter codigo a los demas jsp para seguridad-->
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
     
     
     <!-- Scripts -->
	 	 		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
	
	 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    
    <script src="scripts/table.js"></script>
    
    </body>
</html>