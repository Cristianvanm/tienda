<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<!-- http://localhost:8080/ListarUsuariobra.jsp-->
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LISTADO USUARIOS TIENDA DOÑA GALLINA</title>
	
	<link rel="stylesheet" href="css/tabla.css">
	<link rel="stylesheet" href="css/nave.css">
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

	
</head>
<body>
     <ul>
        <li><a href="primerPagina.html">Usuarios</a></li><!--elementos de la lista-->
        <li><a href="formulario.html">Clientes</a></li>
        <li>Proveedores</li>
        <li>Productos</li>
        <li>Ventas</li>
        <li>Reportes</li>
        

    </ul>
     <!-- contenido de la pagina -->
     
     
     
     <table id="tabla" class="table-primary">
        <thead>
        <tr id="nombres">
        	<th>Cedula</th>
        	<th>Email</th>
            <th>Nombre</th>
            <th>Contraseña</th>
            <th>Usuario</th>
            <th > <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"> Agregar Usuario </button> </th>
        </tr>
        		
        </thead>
        <tbody id="cuerpoTabla" class="table-info">
        		<!-- el cuerpo lo alimentamos desde java script -->
        </tbody>
     </table>
 
 <!-- modal -->
 
 <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Registrar Usuario</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="">
        
    <!--etiqueta con multiples atributos-->
     <!--place holder le da nombre a o instructivo a la cajita-->
        <input type="text" class ="inputs" id ="input1" name ="inputUser" placeholder="Cedula">
        <!--enmascaramiento-->
        <input type="text" class ="inputs" id ="input2" name ="inputPassword" placeholder="Nombre Completo"> <!--convencion camel case igual que java-->
        <input type="email" class ="inputs" id ="input3" name ="inputUser" placeholder="Correo Electronico">
        <input type="text" class ="inputs" id ="input4" name ="inputUser" placeholder="Usuario">
        <input type="password" class ="inputs" id ="input5" name ="inputUser" placeholder="Contraseña">
        <!--cargar archivo Usuario-->
        
      <!--  <div id ="file"></div>-->
     <!--  <input type="submit" name ="login" id ="CrearUsuario" class ="button" value ="REGISTRAR USUARIO">-->
    </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id ="CrearUsuario">Crear Usuario</button>
      </div>
    </div>
  </div>
</div>
 
 
     

    <label id="nombreUsuario">  </label>
    <label id="contrasenaUsuario"></label>
     <!-- Scripts -->
     
	 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script src="scripts/tablebra.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>