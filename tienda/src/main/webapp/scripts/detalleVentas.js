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
          columna3.innerHTML = item.cTotalCliente;
         
          lista.appendChild(tr);
          tr.appendChild(columna1);
          tr.appendChild(columna2);
          tr.appendChild(columna3);
       
       document.getElementById('totalVentas').value=item.cTotal;
 });
$(document).ready(function() {
    $('#tabla').DataTable({
	
});
} );
        }
         }) };



    


