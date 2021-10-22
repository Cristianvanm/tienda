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
   	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
	<link rel="stylesheet" href="css/table.css">
	<link rel="stylesheet" href="css/nave.css"></head>

<body>
    <!--ul lista desordenada, elementos y listas, ol es ordenada-->
  
     <!--hr para ver la linea arriba-->
    
    <form   name="formulario" method="post" action="Login.jsp">
    <h2>Tienda Doña Gallina Iniciar Sesión</h2>
    <table class="login">
        
    <!--etiqueta con multiples atributos-->
     <!--place holder le da nombre a o instructivo a la cajita-->
       <tr><td><input type="text" class ="inputs log" id ="input1" name ="inputUser" placeholder="Usuario..">
               
        <!--enmascaramiento-->
       <tr><td>  <input type="password" class ="inputs log" id ="input2" name ="inputPassword" placeholder="Contraseña.."> <!--convencion camel case igual que java-->
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