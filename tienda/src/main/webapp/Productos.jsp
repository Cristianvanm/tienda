<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page import="com.bosque.DTO.Productos" %>
<!DOCTYPE html>
<html>
<head>
    <!-- http://localhost:8080/Productos.jsp-->
	<meta charset="ISO-8859-1">
	<title>Archivo Productos</title>
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
    <e>---------SELECCIONAR ARCHIVO DE PRODUCTOS---------</e><!--elementos de la lista-->
    <hr>
     <ul>
     
        <li><a href="paginaInicial.jsp">Volver</a></li><!--elementos de la lista-->
         <li><a href="ListarProductos.jsp">Ver tabla</a></li>
      
    </ul>
    <form name="formulario" method="post" enctype="multipart/form-data" action="Productos/cargar">
        <table>
        <tr>
        <td>Seleccione archivo</td><td><input type="file" id="archivo" onchange="cargarArchivo(this)" name="file" accept=".csv"></td>
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
	 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script src="scripts/file.js"></script>
</body>
</html>