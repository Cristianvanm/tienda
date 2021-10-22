<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--http://localhost:8080/RegistrarUsuario.jsp-->
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="css/registrar.css">
    <link rel="stylesheet" href="css/nave.css">
    <!--para fuentes y tipo de letra-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=ZCOOL+KuaiLe&display=swap" rel="stylesheet">
    <!--para iconos-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <e>---------REGISTRAR CLIENTE---------</e><!--elementos de la lista-->
    <hr>
    <ul>
        <li><a href="GestionClientes.jsp">Volver</a></li><!--elementos de la lista-->
       
    </ul>
     <!--hr para ver la linea arriba-->
    <hr>
     <form action="">
        
        
        <input type="number" class ="inputs" id ="input1" name ="inputCedula" placeholder="Cedula">
        
         <input type="text" class ="inputs" id ="input2" name ="inputDireccion" placeholder="Direccion">
        
        <input type="email" class ="inputs" id ="input3" name ="inputEmail" placeholder="Correo Electronico">
        <input type="text" class ="inputs" id ="input4" name ="inputNombre" placeholder="Nombre"> <!--convencion camel case igual que java-->
        <input type="text" class ="inputs" id ="input5" name ="inputTelefono" placeholder="Telefono">
       
        <input type="submit" name ="create" id ="crearCliente" class ="button" value ="REGISTRAR">
    </form>
     <!--crear el java script-->
     <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script src="scripts/tablecliente.js"></script>
</body>
</html>