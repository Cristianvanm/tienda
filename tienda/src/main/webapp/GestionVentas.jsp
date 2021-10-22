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
     


    <e>---------VENTAS---------</e><!--elementos de la lista-->
    <hr>
     <button type="button" class="btn btn-success" onclick="location.href='paginaInicial.jsp'"> Pagina Inicial </button>
     <!--hr para ver la linea arriba-->
    <hr>
    <section id="form1" >
    <form action="">
     <div>
    	<label for="cedula">Cedula</label>
        <input type="number"  class ="inputs" id ="cedula" name ="inputCedula" placeholder="Cedula">
        <input type="Button" name ="update" id ="consultarCliente" class ="btn btn-info btn-lg" value ="Consultar"> 
        <label for="nCliente">Cliente</label>
        <input type="text" Class="infot" name ="nombreCliente" id ="nCliente" disabled="disabled"  >
      </div>
      <div> 
        <label for="serial">Consec.</label>
        <input type="text" Class="infot" name ="serial" id ="serial" disabled="disabled"  >
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
        	<th> <input type="number"  class ="numeroP inputs" id ="p1" name ="producto1" placeholder="Producto1"></th>
        	<th><input type="Button" name ="Cp1" id ="consultarp1" class ="btn btn-info btn-lg" value ="Consultar"> </th>
        	<th> <input type="text" Class="infot" name ="nombreP1" id ="np1" disabled="disabled"  ></th>
            <th> <input type="number" Class="numeroP inputs" name ="cantidad" id ="cantidad1" value=1  ></th>
            <th> <input type="text" Class="infot" name ="valorp1" id ="valorp1" disabled="disabled" value=0 ></th>
            <th> <input type="text" Class="infot" name ="iva1" id ="iva1" disabled="disabled" value=0 ></th>
           
        </tr>
         <tr>
        	<th> <input type="number"  class ="numeroP inputs" id ="p2" name ="producto2" placeholder="Producto1"></th>
        	<th><input type="Button" name ="Cp1" id ="consultarp2" class ="btn btn-info btn-lg" value ="Consultar"> </th>
        	<th> <input type="text" Class="infot" name ="nombreP2" id ="np2" disabled="disabled"  ></th>
            <th> <input type="number" Class="numeroP inputs" name ="cantidad2" id ="cantidad2" value=1  ></th>
            <th> <input type="text" Class="infot" name ="valorp2" id ="valorp2" disabled="disabled" value=0 ></th>
            <th> <input type="text" Class="infot" name ="iva2" id ="iva2" disabled="disabled" value=0 ></th>
         
           
        </tr>
         <tr>
        	<th> <input type="number"  class ="numeroP inputs" id ="p3" name ="producto3" placeholder="Producto1"></th>
        	<th><input type="Button" name ="Cp1" id ="consultarp3" class ="btn btn-info btn-lg" value ="Consultar"> </th>
        	<th> <input type="text" Class="infot" name ="nombreP3" id ="np3" disabled="disabled"  ></th>
            <th> <input type="number" Class="numeroP inputs" name ="cantidad3" id ="cantidad3"  value=1 ></th>
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
    <br>
    <br>
    <input type="submit" name ="envio" id ="envio" class="btn btn-danger btn-lg btn-block" value ="Confirmar">
    </form>
     
  </section>
     
   
   
     <!--crear el java script-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
	
	 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
     <script src="scripts/ventas.js"></script>
    
    
</body>
</html>
