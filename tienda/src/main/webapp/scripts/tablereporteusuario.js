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
         

          
          lista.appendChild(tr);
          tr.appendChild(columna1);
          tr.appendChild(columna2);
          tr.appendChild(columna3);
          tr.appendChild(columna4);
          tr.appendChild(columna5);
         
         
           
        
         });
        }
         }) };

    