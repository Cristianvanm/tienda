/**
 * 
 */
saveme();
function saveme(){ $.ajax({ 
//var saveme =  //con ajax consumimos la api
        type: "POST",
        url: "http://localhost:8080/Usuarios/Lista", //ruta de la API consultaremos.
      
          success: function(data) {
	      lista = document.getElementById("cuerpoTabla");
         // lista.innerHTML = '';
          $.each(data, function(i, item) {
          
         
          var tr = document.createElement("tr");
          var idtr = document.createAttribute("id");//tr con id
          idtr.value=item.cedulaUsuario;
          tr.setAttributeNode(idtr);
      
          var columna1 = document.createElement("th");
          columna1.innerHTML = item.cedulaUsuario;
          var columna2 = document.createElement("th");
          columna2.innerHTML = item.emailUsuario;
          var columna3 = document.createElement("th");
          columna3.innerHTML = item.nombreUsuario;
          var columna4 = document.createElement("th");
          columna4.innerHTML = item.password;
           var columna5 = document.createElement("th");
          columna5.innerHTML = item.usuario;
          var columna6 = document.createElement("th");

          var button=document.createElement("button");
          var idbutton = document.createAttribute("id");//tr con id
          idbutton.value=item.cedulaUsuario;
          button.setAttributeNode(idbutton);
         
          var classbutton = document.createAttribute("class");
          classbutton.value="btn btn-primary btnConsultar";
          button.setAttributeNode(classbutton);

          var icon=document.createElement("i");
          var classicon = document.createAttribute("class");
          classicon.value="fa fa-search";
          icon.setAttributeNode(classicon);

          var button2=document.createElement("button");
          var idbutton2 = document.createAttribute("id");//tr con id
          idbutton2.value=item.cedulaUsuario;
          button2.setAttributeNode(idbutton2);
         
         var classbutton2 = document.createAttribute("class");
          classbutton2.value="btn btn-danger btnEliminar";
          button2.setAttributeNode(classbutton2);

          var icon2=document.createElement("i");
          var classicon2 = document.createAttribute("class");
          classicon2.value="fa fa-user-slash";
          icon2.setAttributeNode(classicon2);
        

          lista.appendChild(tr);
          tr.appendChild(columna1);
          tr.appendChild(columna2);
          tr.appendChild(columna3);
          tr.appendChild(columna4);
          tr.appendChild(columna5);
          tr.appendChild(columna6);
          columna6.appendChild(button);
         button.appendChild(icon);
         columna6.appendChild(button2);
         button2.appendChild(icon2);
           
        
         });
        }
         }) };

     $('table').on('click','.btnConsultar',function(){
	   var cedula=$(this).attr('id');
       console.log(cedula);
        $.ajax({
	          type:"GET",
              url:"http://localhost:8080/Usuarios/"+cedula,
             dataType: "json",
             error: function(){
	           alert("Error en la peticion");
       }
    }).done(function(data){
	      console.log(data.nombreUsuario);
          var infonombre = document.getElementById('nombreUsuario');
          infonombre.innerHTML = data.nombreUsuario;
	      var infoemail = document.getElementById('emailUsuario');
          infoemail.innerHTML = data.emailUsuario;
           var infocontrasena =document.getElementById('contrasenaUsuario');
          infocontrasena.innerHTML=data.password;
          var infousuario =document.getElementById('usuario');
          infousuario.innerHTML=data.usuario;
           
 })
	
	})  
	
	$('table').on('click','.btnEliminar',function(){
		 var cedula=$(this).attr('id');
	     $.ajax({
		      type:"DELETE",
              url:"http://localhost:8080/Usuarios/"+cedula,
              contentType: "application/json",
               
		})
	   location.reload();
	})

//PUT= actualizar UPDATE
//POST= crear INSERT
$('#crearUsuario').click(function(event){
    var cedula = $("#input1").val();
    var email = $("#input2").val();
    var nombre = $("#input3").val();
    var clave = $("#input4").val();
    var usuario = $("#input5").val();
    
    //JSON
    var user={
        cedulaUsuario:cedula,
        emailUsuario: email,
        nombreUsuario: nombre,
        password: clave,
        usuario: usuario
    }
    $.ajax({
        type:"POST",
        data:JSON.stringify(user), //esto permite convertir el string de user a objeto JSON
        url:"http://localhost:8080/Usuarios/",
        contentType:"application/json"
    })
    
})

$('#actualizarUsuario').click(function(event){
    var cedula = $("#input6").val();
    var email = $("#input7").val();
    var nombre = $("#input8").val();
    var clave = $("#input9").val();
    var usuario = $("#input10").val();
    
    //JSON
    var user={
        cedulaUsuario:cedula,
        emailUsuario: email,
        nombreUsuario: nombre,
        password: clave,
        usuario: usuario
    }
    $.ajax({
        type:"PUT",
        data:JSON.stringify(user), //esto permite convertir el string de user a objeto JSON
        url:"http://localhost:8080/Usuarios/",
        contentType:"application/json"
    })
    
})