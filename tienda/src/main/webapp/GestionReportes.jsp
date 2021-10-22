<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page session="true"  %>
<!DOCTYPE html>
<html>
<head>
    <!-- http://localhost:8080/GestionUsuarios.jsp-->
	<meta charset="ISO-8859-1">
	<title>REPORTES TIENDA DOÑA GALLINA</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
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

         <nav id="navprin"> <br> <br> <br><br> <br></nav>
      
      <nav  >
<div class="btn-group">
  <button type="button" onclick="location.href='GestionUsuarios.jsp';"  id="Usuarios" class="btn btn-secondary">Usuarios</button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">
    
    <a class="dropdown-item" href="RegistrarUsuario.jsp">Registrar</a>
    <a class="dropdown-item" href="ListarUsuario.jsp">Buscar</a>
    <a class="dropdown-item" href="ActualizarUsuario.jsp">Actualizar</a>
    <a class="dropdown-item" href="ListarUsuario.jsp">Eliminar</a>
    
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="paginaInicial.jsp">Volver</a>
  </div>
</div>

<div class="btn-group">
  <button type="button" onclick="location.href='GestionClientes.jsp';" id="Clientes" class="btn btn-secondary">Clientes</button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">
    
    <a class="dropdown-item" href="RegistrarCliente.jsp">Registrar</a>
    <a class="dropdown-item" href="ListarClientes.jsp">Buscar</a>
    <a class="dropdown-item" href="ActualizarCliente.jsp">Actualizar</a>
    <a class="dropdown-item" href="ListarClientes.jsp">Eliminar</a>
    
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="paginaInicial.jsp">Volver</a>
  </div>
</div>


<div class="btn-group">
  <button type="button" onclick="location.href='GestionProveedor.jsp';" id="Proveedores" class="btn btn-secondary">Proveedores</button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">
    
    <a class="dropdown-item" href="RegistrarProveedor.jsp">Registrar</a>
    <a class="dropdown-item" href="ListarProveedores.jsp">Buscar</a>
    <a class="dropdown-item" href="ActualizarProveedor.jsp">Actualizar</a>
    <a class="dropdown-item" href="ListarProveedores.jsp">Eliminar</a>
    
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="paginaInicial.jsp">Volver</a>
  </div>
</div>

<div class="btn-group">
  <button type="button" onclick="location.href='Productos.jsp';" id="Productos" class="btn btn-secondary">Productos</button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">
    
    <a class="dropdown-item" href="RegistrarUsuario.jsp">Registrar</a>
    <a class="dropdown-item" href="ListarUsuario.jsp">Buscar</a>
    <a class="dropdown-item" href="ActualizarUsuario.jsp">Actualizar</a>
    <a class="dropdown-item" href="ListarUsuario.jsp">Eliminar</a>
    
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="paginaInicial.jsp">Volver</a>
  </div>
</div>



<div class="btn-group">
  <button type="button" onclick="location.href='GestionVentas.jsp';" id="Ventas" class="btn btn-secondary">Ventas</button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">
    
    <a class="dropdown-item" href="#">Nueva</a>

  
    
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="paginaInicial.jsp">Volver</a>
  </div>
</div>



<div class="btn-group">
  <button type="button" onclick="location.href='GestionReportes.jsp';" id="Reportes" class="btn btn-secondary">Reportes</button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">
    
    <a class="dropdown-item" href="ReporteUsuarios.jsp">Listado de Usuarios</a>
    <a class="dropdown-item" href="ReporteClientes.jsp">Listado de Clientes</a>
    <a class="dropdown-item" href="ListarVentas.jsp">Listado Ventas</a>
    <a class="dropdown-item" href="ReporteVentasClientes.jsp">Ventas por Cliente</a>
     
  
    
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="paginaInicial.jsp">Volver</a>
  </div>
</div>

</nav>



    <e>---------REPORTES TIENDA DOÑA GALLINA---------</e><!--elementos de la lista-->
      
    <hr>
     <ul>
     
        <li><a href="ReporteUsuarios.jsp">Listado de Usuarios</a></li><!--elementos de la lista-->
        <li><a href="ReporteClientes.jsp">Listado de Clientes</a></li>
        <li><a href="ListarVentas.jsp">Listado Ventas</a></li>
         <li><a href="ReporteVentasClientes.jsp">Ventas por Cliente</a></li>
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
