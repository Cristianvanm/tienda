saveme();
function saveme(){ $.ajax({ 
//var saveme =  //con ajax consumimos la api
        type: "POST",
        url: "http://localhost:8080/Ventascliente/Lista", //ruta de la API consultaremos.
      
          success: function(data) {
	      lista = document.getElementById("cuerpoTabla");
         // lista.innerHTML = '';
          $.each(data, function(i, item) {
          
         
         var tr = document.createElement("tr");
       // var idtr = document.createAttribute("id");//tr con id
      //  idtr.value=item.bCedulaCliente;
      //   tr.setAttributeNode(idtr);
      
          var columna1 = document.createElement("th");
          columna1.innerHTML = item.aCedulaCliente;
          var columna2 = document.createElement("th");
          columna2.innerHTML = item.bNombreCliente;
          var columna3 = document.createElement("th");
          columna3.innerHTML = item.cTotal;
         
          lista.appendChild(tr);
          tr.appendChild(columna1);
          tr.appendChild(columna2);
          tr.appendChild(columna3);
        
           
        
         });
        }
         }) };

/*$('#consultarCedula').click(function(event){
         var cedula = $("#cedula").val();
       console.log(cedula);
        $.ajax({
	          type:"POST",
              url:"http://localhost:8080/Ventascliente/"+cedula,
             dataType: "json",
             error: function(){
	           alert("Error en la peticion");

       },  success: function(data) {
	      lista = document.getElementById("cuerpoTabla");
         // lista.innerHTML = '';
          $.each(data, function(i, item) {
          
         
          var tr = document.createElement("tr");
          var idtr = document.createAttribute("id");//tr con id
          idtr.value=item.bCedulaCliente;
          tr.setAttributeNode(idtr);
      
          var columna1 = document.createElement("th");
          columna1.innerHTML = item.bCedulaCliente;
          var columna2 = document.createElement("th");
          columna2.innerHTML = item.bCedulaCliente;
          var columna3 = document.createElement("th");
          columna3.innerHTML = item.eTotalVenta;
         

          lista.appendChild(tr);
          tr.appendChild(columna1);
          tr.appendChild(columna2);
          tr.appendChild(columna3);
        
       
         });
        }
    })
      
 })
   */ 


