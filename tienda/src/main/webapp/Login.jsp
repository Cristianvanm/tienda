<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.bosque.DAO.LoginDAO" %>
     
       <%@page session="true"  %>
<!-- http://localhost:8080/Login.jsp-->
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="css/login.css">
   
    <!--para fuentes y tipo de letra-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=ZCOOL+KuaiLe&display=swap" rel="stylesheet">
    <!--para iconos-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <!--ul lista desordenada, elementos y listas, ol es ordenada-->
  
     <!--hr para ver la linea arriba-->
    
    <form   name="formulario" method="post" action="Login.jsp">
    <h2>Tienda Doña Gallina Iniciar Sesión</h2>
    <table>
        
    <!--etiqueta con multiples atributos-->
     <!--place holder le da nombre a o instructivo a la cajita-->
       <tr><td><input type="text" class ="inputs" id ="input1" name ="inputUser" placeholder="Usuario..">
               
        <!--enmascaramiento-->
       <tr><td>  <input type="password" class ="inputs" id ="input2" name ="inputPassword" placeholder="Contraseña.."> <!--convencion camel case igual que java-->
        <label id="error2" style="color:red" ></label></td></tr>
     
       <!--   <input type="submit" name ="login" id ="input3" class ="button" value ="INGRESAR">-->
        <tr><td><input type="submit"  Class="button" name="ingresar" value="INGRESAR"/></td></tr>
        
        </table>
     
    </form>
  
   <% 
       LoginDAO ld = new LoginDAO();
   if(request.getParameter("ingresar")!=null){
            	 String usuario = request.getParameter("inputUser");
            	 String contra = request.getParameter("inputPassword");
            	
            	 switch(ld.loguear(usuario, contra)){
            	 case 1:
            		 HttpSession sesion = request.getSession();
            		 sesion.setAttribute("user", usuario);
            		 response.sendRedirect("paginaInicial.jsp");
            	 break;
            	 default:
            		 out.write("---------------Paila, Usuario o contraseña errados, intente de nuevo--------------------");
            		 break;
             }
   }  
   
   if(request.getParameter("cerrar")!=null){
	   session.invalidate();
   }
             %>
     <!--crear el java script-->
     <!--  <script  src="scripts/login.js"> </script> --> 
    
</body>
</html>