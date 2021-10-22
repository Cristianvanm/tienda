<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page session="true"  %>
<!DOCTYPE html>

<!-- http://localhost:8080/ReporteVentasClientes.jsp-->
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LISTADO VENTAS POR CLIENTE TIENDA DOÑA GALLINA</title>
	     	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 
    <link rel="stylesheet" href="css/ventas.css">
    <link rel="stylesheet" href="css/nave.css">
    <!--para fuentes y tipo de letra-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=ZCOOL+KuaiLe&display=swap" rel="stylesheet">
    <!--para iconos-->
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
     <e>---------LISTADO VENTAS POR CLIENTE---------</e><!--elementos de la lista-->
    <hr>
     <hr>
     <button type="button" class="btn btn-success" onclick="location.href='paginaInicial.jsp'"> Pagina Inicial </button>
     <!--hr para ver la linea arriba-->
    <hr>
     <!--hr para ver la linea arriba-->
    <hr>
     <!-- contenido de la pagina -->
      
     <table id="tabla" class="table">
        <thead>
         <tr>
        	<th>Cedula Cliente</th>
            <th>Nombre Cliente</th>
            <th>Valor Total Ventas</th>
        </tr>
               
        </thead>
        <tbody id="cuerpoTabla">
        		<!-- el cuerpo lo alimentamos desde java script -->
        </tbody>
       
        
     </table>
     <div> 
        <label for="serial">Total Ventas $.</label>
        <input type="number" class="infot" name ="totalVentas" id ="totalVentas" disabled="disabled"  >
        
       
      </div>
   	
        
     
     <!-- Scripts -->
	 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script src="scripts/detalleVentas.js"></script>
</body>
</html>