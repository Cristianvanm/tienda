saveme();
function saveme(){ $.ajax({ 
//var saveme =  //con ajax consumimos la api
        type: "POST",
        url: "http://localhost:8080/Clientes/Lista", //ruta de la API consultaremos.
      
          success: function(data) {
	      lista = document.getElementById("cuerpoTabla");
         // lista.innerHTML = '';
          $.each(data, function(i, item) {
          
         
          var tr = document.createElement("tr");
          var idtr = document.createAttribute("id");//tr con id
          idtr.value=item.cedulaCliente;
          tr.setAttributeNode(idtr);
      
          var columna1 = document.createElement("th");
          columna1.innerHTML = item.cedulaCliente;
          var columna2 = document.createElement("th");
          columna2.innerHTML = item.direccionCliente;
          var columna3 = document.createElement("th");
          columna3.innerHTML = item.emailCliente;
          var columna4 = document.createElement("th");
          columna4.innerHTML = item.nombreCliente;
           var columna5 = document.createElement("th");
          columna5.innerHTML = item.telefonoCliente;
          var columna6 = document.createElement("th");

          var button=document.createElement("button");
          var idbutton = document.createAttribute("id");//tr con id
          idbutton.value=item.cedulaCliente;
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
          idbutton2.value=item.cedulaCliente;
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
              url:"http://localhost:8080/Clientes/"+cedula,
             dataType: "json",
             error: function(){
	           alert("Error en la peticion");
       }
    }).done(function(data){
	      console.log(data.nombreCliente);
          var infodireccion = document.getElementById('direccionCliente');
          infodireccion.innerHTML = data.direccionCliente;
	      var infoemail = document.getElementById('emailCliente');
          infoemail.innerHTML = data.emailCliente;
           var infocontrasena =document.getElementById('nombreCliente');
          infocontrasena.innerHTML=data.nombreCliente;
          var infousuario =document.getElementById('telefonoCliente');
          infousuario.innerHTML=data.telefonoCliente;
           
 })
	
	})  
	
	$('table').on('click','.btnEliminar',function(){
		 var cedula=$(this).attr('id');
	     $.ajax({
		      type:"DELETE",
              url:"http://localhost:8080/Clientes/"+cedula,
              contentType: "application/json",
               
		})
	   location.reload();
	})
	
	$('#crearCliente').click(function(event){
    var cedula = $("#input1").val();
    var direccion = $("#input2").val();
    var email = $("#input3").val();
    var nombre = $("#input4").val();
    var telefono = $("#input5").val();
    
    //JSON
    var client={
        cedulaCliente:cedula,
        direccionCliente: direccion,
        emailCliente: email,
        nombreCliente: nombre,
        telefonoCliente: telefono
    }
 
    $.ajax({
        type:"POST",
        data:JSON.stringify(client), //esto permite convertir el string de user a objeto JSON
        url:"http://localhost:8080/Clientes/",
        contentType:"application/json"
    })
    
})

$('#actualizarCliente').click(function(event){
   var cedula = $("#input6").val();
    var direccion = $("#input7").val();
    var email = $("#input8").val();
    var nombre = $("#input9").val();
    var telefono = $("#input10").val();
    
    //JSON
   var client={
        cedulaCliente:cedula,
        direccionCliente: direccion,
        emailCliente: email,
        nombreCliente: nombre,
        telefonoCliente: telefono
    }
    $.ajax({
        type:"PUT",
        data:JSON.stringify(client), //esto permite convertir el string de user a objeto JSON
        url:"http://localhost:8080/Clientes/",
        contentType:"application/json"
    })
    
})