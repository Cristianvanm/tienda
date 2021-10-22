<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page session="true"  %> 
<!--http://localhost:8080/GestionVentas.jsp-->
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
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
    <e>---------VENTAS---------</e><!--elementos de la lista-->
    <hr>
    <ul>
        <li><a href="Ventas.jsp">Volver</a></li><!--elementos de la lista-->
       
    </ul>
     <!--hr para ver la linea arriba-->
    <hr>
    <section id="form1" >
    <form action="">
     <div>
        
    	<label for="cedula">Cedula</label>
        <input type="number"  class ="inputs" id ="cedula" name ="inputCedula" placeholder="Cedula">
        <input type="Button" name ="update" id ="consultarCliente" class ="button" value ="Consultar"> 
        <label for="nCliente">Cliente</label>
        <input type="text" Class="infot" name ="nombreCliente" id ="nCliente" disabled="disabled"  >
      </div>
      <div> 
        <label for="serial">Consec.</label>
        <input type="number" class="inputs" name ="serial" id ="serial" disabled="disabled"  >
          <label for="usuario">Usuario.</label>
           <input type="text" Class="infot" name ="cedulaUsuario" id ="cedulaUsuario" disabled="disabled"  >
        
      </div>
      
      
        <table>
        <thead>
        <tr>
        	<th>Cod.Producto</th>
        	<th></th>
        	<th>Nombre Producto</th>
            <th>Cant.</th>
            <th>Valor total</th>
            <th>Total Iva</th>
           
        </tr>
        		
        </thead>
        
        <tbody id="">
        <tr>
        	<th> <input type="number"  class ="inputs" id ="p1" name ="producto1" placeholder="Producto1"></th>
        	<th><input type="Button" name ="Cp1" id ="consultarp1" class ="button" value ="Consultar"> </th>
        	<th> <input type="text" Class="infot" name ="nombreP1" id ="np1" disabled="disabled"  ></th>
            <th> <input type="number" Class="infot" name ="cantidad" id ="cantidad1" value=1  ></th>
            <th> <input type="text" Class="infot" name ="valorp1" id ="valorp1" disabled="disabled" value=0 ></th>
            <th> <input type="text" Class="infot" name ="iva1" id ="iva1" disabled="disabled" value=0 ></th>
           
        </tr>
         <tr>
        	<th> <input type="number"  class ="inputs" id ="p2" name ="producto2" placeholder="Producto1"></th>
        	<th><input type="Button" name ="Cp1" id ="consultarp2" class ="button" value ="Consultar"> </th>
        	<th> <input type="text" Class="infot" name ="nombreP2" id ="np2" disabled="disabled"  ></th>
            <th> <input type="number" Class="infot" name ="cantidad2" id ="cantidad2" value=1  ></th>
            <th> <input type="text" Class="infot" name ="valorp2" id ="valorp2" disabled="disabled" value=0 ></th>
            <th> <input type="text" Class="infot" name ="iva2" id ="iva2" disabled="disabled" value=0 ></th>
         
           
        </tr>
         <tr>
        	<th> <input type="number"  class ="inputs" id ="p3" name ="producto3" placeholder="Producto1"></th>
        	<th><input type="Button" name ="Cp1" id ="consultarp3" class ="button" value ="Consultar"> </th>
        	<th> <input type="text" Class="infot" name ="nombreP3" id ="np3" disabled="disabled"  ></th>
            <th> <input type="number" Class="infot" name ="cantidad3" id ="cantidad3"  value=1 ></th>
            <th> <input type="number" Class="infot" name ="valorp3" id ="valorp3" disabled="disabled" value=0 ></th>
         	<th> <input type="number" Class="infot" name ="iva3" id ="iva3" disabled="disabled" value=0 ></th>
           
        </tr>
        <tr>	
        	<th> </th>
        	<th> </th>
        	<th> </th>
        	<th> Total Venta</th>
        	<th><input type="number" Class="infot" name ="tventa" id ="tventa" disabled="disabled"  > </th>
        </tr>
         <tr>	
        	<th> </th>
        	<th> </th>
        	<th> </th>
        	<th> Total Iva</th>
        	<th><input type="number" Class="infot" name ="tIva" id ="tIva" disabled="disabled"  > </th>
        </tr>	
         <tr>	
        	<th> </th>
        	<th> </th>
        	<th> </th>
        	<th> Total Con Iva</th>
        	<th><input type="number" Class="infot" name ="Total" id ="Total" disabled="disabled"  > </th>
        </tr>		
        </tbody>
        
        </table>
    
    <input type="submit" name ="envio" id ="envio" class ="button" value ="Confirmar">
    </form>
     
   
   
     <!--crear el java script-->
     <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script src="scripts/ventas.js"></script>
</body>
</html>
