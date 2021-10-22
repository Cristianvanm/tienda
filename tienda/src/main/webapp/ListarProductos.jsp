<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<!-- http://localhost:8080/ListarUsuario.jsp-->
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LISTADO PRODUCTOS</title>
	<link rel="stylesheet" href="css/tabla.css">
	<link rel="stylesheet" href="css/nave.css">
	
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
    
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
     <e>---------LISTADO PRODUCTOS---------</e><!--elementos de la lista-->
    <hr>
    <ul>
        <li><a href="Productos.jsp">Volver</a></li><!--elementos de la lista-->
       
    </ul>
     <!--hr para ver la linea arriba-->
    <hr>
     <!-- contenido de la pagina -->
     <table id="tabla" class="table">
        <thead>
        <tr>
        	<th>Codigo</th>
        	<th>Iva Venta</th>
        	<th>Nit Proveedor</th>
            <th>Nombre</th>
            <th>Precio Compra</th>
            <th>Precio Venta</th>
           
        </tr>
        		
        </thead>
        <tbody id="cuerpoTabla">
        		<!-- el cuerpo lo alimentamos desde java script -->
        </tbody>
          <tfoot>
            <tr>
                <td colspan="6"> <button class="btn btn-success"> <i class="fas fa-plus-circle"></i> </button></td>
            </tr>
        </tfoot>
        
     </table>
     <label id="emailUsuario"></label>
     <label id="nombreUsuario"></label>
     <label id="contrasenaUsuario"></label>
     <label id="usuario"></label>
     
     
     <!-- Scripts -->
	 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script src="scripts/tableproductos.js"></script>
</body>
</html>