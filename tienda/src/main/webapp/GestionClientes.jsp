<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <!-- http://localhost:8080/GestionUsuarios.jsp-->
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
     
    <e>---------GESTION DE CLIENTES TIENDA DOÑA GALLINA---------</e><!--elementos de la lista-->
      
    <hr>
     <div>
     
        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal"> Registrar Cliente </button><!--elementos de la lista-->
       
         
         
         <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal2"> Actualizar Cliente </button>         
        
         <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal3"> Eliminar Cliente </button>
         
         
        
         <button type="button" class="btn btn-success" onclick="location.href='paginaInicial.jsp'"> Pagina Inicial </button>
               
    </div>
     <!-- contenido de la pagina -->
     
     <div class="buscar">
   <label id="direccionCliente"></label>
     <label id="emailCliente"></label>
     <label id="nombreCliente"></label>
     <label id="telefonoCliente"></label>
</div>
     
     
      <table id="tabla" class="display" style="width:100%">
        <thead>
        <tr>
        	<th>Cedula</th>
        	<th>Direccion</th>
            <th>Email</th>
            <th>Nombre</th>
            <th>Telefono</th>
            <th><button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"> Registrar Cliente </button></th>
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
     
     
     
     <!-- modal 0  Crear -->
 
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
        <input type="text" class ="inputs" id ="input2" name ="inputUser" placeholder="Dirección"> <!--convencion camel case igual que java-->
        <input type="email" class ="inputs" id ="input3" name ="inputUser" placeholder="Correo Electronico">
        <input type="text" class ="inputs" id ="input4" name ="inputUser" placeholder="Nombre">
        <input type="number" class ="inputs" id ="input5" name ="inputUser" placeholder="Telefono">
            <!--cargar archivo Usuario-->
        
      <!--  <div id ="file"></div>-->
     <!--  <input type="submit" name ="login" id ="CrearUsuario" class ="button" value ="REGISTRAR USUARIO">-->
    </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id ="crearCliente">Crear Cliente</button>
      </div>
    </div>
  </div>
</div>
     
     
<!-- modal 1 actualizar ----------------------------------------------------------------------------------------------------->

<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel1">Actualizando Datos</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="">
        
    <!--etiqueta con multiples atributos-->
     <!--place holder le da nombre a o instructivo a la cajita-->
        
        <!--enmascaramiento-->
       <input type="text" class ="inputs" id ="input22" name ="inputUser" placeholder="Dirección"> <!--convencion camel case igual que java-->
        <input type="email" class ="inputs" id ="input33" name ="inputUser" placeholder="Correo Electronico">
        <input type="text" class ="inputs" id ="input44" name ="inputUser" placeholder="Nombre">
        <input type="number" class ="inputs" id ="input55" name ="inputUser" placeholder="Telefono">
             <!--cargar archivo Usuario-->
        
      <!--  <div id ="file"></div>-->
     <!--  <input type="submit" name ="login" id ="CrearUsuario" class ="button" value ="REGISTRAR USUARIO">-->
    </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn-primary" id ="ActualizarCliente">Actualizar Cliente</button>
      </div>
    </div>
  </div>
</div>


<!-- modal 2 Actualizar con cedula ----------------------------------------------------------------------------------------------------->

<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel2">Actualizando Datos</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="">
        
    <!--etiqueta con multiples atributos-->
     <!--place holder le da nombre a o instructivo a la cajita-->
        <input type="text" class ="inputs" id ="input111" name ="inputCedula" placeholder="Cedula a actualizar">
        <hr>
        <!--enmascaramiento-->
        <input type="text" class ="inputs" id ="input222" name ="inputUser" placeholder="Dirección"> <!--convencion camel case igual que java-->
        <input type="email" class ="inputs" id ="input333" name ="inputUser" placeholder="Correo Electronico">
        <input type="text" class ="inputs" id ="input444" name ="inputUser" placeholder="Nombre">
        <input type="number" class ="inputs" id ="input555" name ="inputUser" placeholder="Telefono">
        <!--cargar archivo Usuario-->
        
      <!--  <div id ="file"></div>-->
     <!--  <input type="submit" name ="login" id ="CrearUsuario" class ="button" value ="REGISTRAR USUARIO">-->
    </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn-primary" id ="ActualizarClienteCedula">Actualizar Cliente</button>
      </div>
    </div>
  </div>
</div>


<!-- modal 3 Eliminar ----------------------------------------------------------------------------------------------------->

<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel3">Eliminar Cliente</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="">
        
    <!--etiqueta con multiples atributos-->
     <!--place holder le da nombre a o instructivo a la cajita-->
        <input type="text" class ="inputs" id ="input0" name ="inputCedula" placeholder="Cedula a Eliminar">
        <hr>
          <!--cargar archivo Usuario-->
        
      <!--  <div id ="file"></div>-->
     <!--  <input type="submit" name ="login" id ="CrearUsuario" class ="button" value ="REGISTRAR USUARIO">-->
    </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn-primary" id ="EliminarCliente">Eliminar Cliente</button>
      </div>
    </div>
  </div>
</div>
 

     <!-- Scripts -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
	
	 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    
    <script src="scripts/tablecliente.js"></script>
</body>
</html>
