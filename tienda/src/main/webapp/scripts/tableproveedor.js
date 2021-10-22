/**
 * 
 */
saveme();
function saveme(){ $.ajax({ 
//var saveme =  //con ajax consumimos la api
        type: "POST",
        url: "http://localhost:8080/Provee/Lista", //ruta de la API consultaremos.
      
          success: function(data) {
	      lista = document.getElementById("cuerpoTabla");
         // lista.innerHTML = '';
          $.each(data, function(i, item) {
          
         
          var tr = document.createElement("tr");
          var idtr = document.createAttribute("id");//tr con id
          idtr.value=item.acednit;
          tr.setAttributeNode(idtr);
      
          var columna1 = document.createElement("th");
          columna1.innerHTML = item.acednit;
          var columna2 = document.createElement("th");
          columna2.innerHTML = item.bciudad;
          var columna3 = document.createElement("th");
          columna3.innerHTML = item.cdireccion;
          var columna4 = document.createElement("th");
          columna4.innerHTML = item.demail;
           var columna5 = document.createElement("th");
          columna5.innerHTML = item.etelefono;
          var columna6 = document.createElement("th");

          var button=document.createElement("button");
          var idbutton = document.createAttribute("id");//tr con id
          idbutton.value=item.acednit;
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
          idbutton2.value=item.acednit;
          button2.setAttributeNode(idbutton2);
         
         var classbutton2 = document.createAttribute("class");
          classbutton2.value="btn btn-danger btnEliminar";
          button2.setAttributeNode(classbutton2);

          var icon2=document.createElement("i");
          var classicon2 = document.createAttribute("class");
          classicon2.value="fa fa-user-slash";
          icon2.setAttributeNode(classicon2);

		var button3=document.createElement("button");
          var idbutton3 = document.createAttribute("id");//tr con id
          idbutton3.value=item.acednit;
          button3.setAttributeNode(idbutton3);
         
         var classbutton3 = document.createAttribute("class");
          classbutton3.value="btn btn-warning btnActualizar";
          button3.setAttributeNode(classbutton3);

          var icon3=document.createElement("i");
          var classicon3 = document.createAttribute("class");
          classicon3.value="fa fa-user-cog";
          icon3.setAttributeNode(classicon3);
        

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
          columna6.appendChild(button3);
         button3.appendChild(icon3);
        
         });

$(document).ready(function() {  //este codigo inicializa la datatable. se pone aqui para que se genere luego de actualizar la tabla.
    $('#tabla').DataTable({
	
});
} );

        }
         }) };

     $('table').on('click','.btnConsultar',function(){
	   var cedula=$(this).attr('id');
       console.log(cedula);
        $.ajax({
	          type:"GET",
              url:"http://localhost:8080/Provee/"+cedula,
             dataType: "json",
             error: function(){
	           alert("Error en la peticion");
       }
    }).done(function(data){
	     console.log(data.bciudad);
          var infociudad = document.getElementById('ciudadProveedor');
          infociudad.innerHTML = data.bciudad;
	      var infodireccion = document.getElementById('direccionProveedor');
         infodireccion.innerHTML = data.cdireccion;
           var infocontrasena =document.getElementById('nombreProveedor');
          infocontrasena.innerHTML=data.demail;
          var infousuario =document.getElementById('telefonoProveedor');
          infousuario.innerHTML=data.etelefono;
           
 })
	
	})  
	
	$('table').on('click','.btnEliminar',function(){
		 var cedula=$(this).attr('id');
	      console.log(cedula);
	     $.ajax({
		      type:"DELETE",
              url:"http://localhost:8080/Provee/"+cedula,
              contentType: "application/json",
               
		})
	   location.reload();
	})
	
	$('#crearProveedor').click(function(event){
    var cedula = $("#input1").val();
    var ciudad = $("#input2").val();
    var direccion = $("#input3").val();
    var email = $("#input4").val();
    var telefono = $("#input5").val();
    
    //JSON
    var prov={
        acednit:cedula,
        bciudad: ciudad,
        cdireccion: direccion,
        demail: email,
        etelefono: telefono
    
    }
 
    $.ajax({
        type:"POST",
        data:JSON.stringify(prov), //esto permite convertir el string de user a objeto JSON
        url:"http://localhost:8080/Provee/",
        contentType:"application/json"
    })
    location.reload();
})

$('#actualizarProveedor').click(function(event){
   var cedula = $("#input6").val();
    var ciudad = $("#input7").val();
    var direccion = $("#input8").val();
    var email = $("#input9").val();
    var telefono = $("#input10").val();
    
    //JSON
  var prove={
        acednit:cedula,
        bciudad: ciudad,
        cdireccion: direccion,
        demail: email,
        etelefono: telefono
    
    }
    $.ajax({
        type:"PUT",
        data:JSON.stringify(prove), //esto permite convertir el string de user a objeto JSON
        url:"http://localhost:8080/Provee/",
        contentType:"application/json"
    })
    
})

//modal en actualizar Proveedor
     $('table').on('click','.btnActualizar',function(){
	   var nit=$(this).attr('id');
       console.log(nit);
        $.ajax({
	          type:"GET",
              url:"http://localhost:8080/Provee/"+nit,
             dataType: "json",
             error: function(){
	           alert("Error en la peticion");
      				 },
			 success: function() {
				
				$('#exampleModal1').modal("show")
				
						
    $('#ActualizarProveedor').click(function(event){
   var Nit = nit;
    var ciudad = $("#input22").val();
    var direccion = $("#input33").val();
    var email = $("#input44").val();
    var telefono = $("#input55").val();

 //JSON
  var prove={
        acednit:Nit,
        bciudad: ciudad,
        cdireccion: direccion,
        demail: email,
        etelefono: telefono
    
    }
    $.ajax({
        type:"PUT",
        data:JSON.stringify(prove), //esto permite convertir el string de user a objeto JSON
        url:"http://localhost:8080/Provee/",
        contentType:"application/json",
		success: function() {
			location.reload();
			}
    })
})
}    
})
})


	//actualizar con cedula
	
	$('#ActualizarProveedor2').click(function(){
     var Nit = $("#input111").val();
    var ciudad = $("#input222").val();
    var direccion = $("#input333").val();
    var email = $("#input444").val();
    var telefono = $("#input555").val();

if(Nit==null){
		alert("Debe ingresar Un Nit");
	}else{
		
		$.ajax({
	          type:"GET",
              url:"http://localhost:8080/Provee/"+Nit,
             dataType: "json",
             error: function(){
	           alert("Debe ingresar Un Nit");
       }
    }).done(function(data){
	console.log(data.acednit)
	      if(data.acednit==0){
		alert("El Proveedor No Se Encuentra Registrado");
		
		
			}else{
    
    //JSON
    var prove={
        acednit:Nit,
        bciudad: ciudad,
        cdireccion: direccion,
        demail: email,
        etelefono: telefono
    }
    $.ajax({
        type:"PUT",
        data:JSON.stringify(prove), //esto permite convertir el string de user a objeto JSON
        url:"http://localhost:8080/Provee/",
        contentType:"application/json",
		success: function() {
			location.reload();
			}
    })
    }
})
}
})



// modal eliminar
$('#EliminarProveedor').click(function(event){
		 var Nit = $("#input0").val();
	console.log(Nit);
	
	if(Nit==null){
		alert("Debe ingresar Un Nit");
	}else{
		
		$.ajax({
	          type:"GET",
              url:"http://localhost:8080/Provee/"+Nit,
             dataType: "json",
             error: function(){
	          alert("Debe ingresar Un Nit");
       }
    }).done(function(data){
	      if(data.acednit==0){
		alert("El Proveedor No Se Encuentra Registrado");
		
		
			}else{
				$.ajax({
		      type:"DELETE",
              url:"http://localhost:8080/Provee/"+Nit,
       		  contentType:"application/json",
			  success: function() {
			  location.reload();
		      }
		 
	
               
		})
			}
		})
	
	}

	
	     
	   
	})
