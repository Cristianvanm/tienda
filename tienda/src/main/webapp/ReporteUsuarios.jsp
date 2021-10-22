<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<!-- http://localhost:8080/ReporteUsuario.jsp-->
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LISTADO USUARIOS TIENDA DOÑA GALLINA</title>
	<link rel="stylesheet" href="css/tabla.css">
	<link rel="stylesheet" href="css/nave.css">
	
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
   	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
     <e>---------LISTADO USUARIOS---------</e><!--elementos de la lista-->
    <hr>
    <ul>
        <li><a href="GestionReportes.jsp">Volver</a></li><!--elementos de la lista-->
       
    </ul>
     <!--hr para ver la linea arriba-->
    <hr>
     <!-- contenido de la pagina -->
     <table id="tabla" class="table">
        <thead>
        <tr>
        	<th>Cedula</th>
        	<th>Correo Electrónico</th>
            <th>Nombre</th>
            <th>Password</th>
            <th>Usuario</th>
        </tr>
        		
        </thead>
        <tbody id="cuerpoTabla">
        		<!-- el cuerpo lo alimentamos desde java script -->
        </tbody>
       
        
     </table>
        
     
     <!-- Scripts -->
	 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script src="scripts/tablereporteusuario.js"></script>
</body>
</html>