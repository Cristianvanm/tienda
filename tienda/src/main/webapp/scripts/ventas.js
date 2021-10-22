saveme();
function saveme(){ $.ajax({ 
//var saveme =  //con ajax consumimos la api
        type: "POST",
        url: "http://localhost:8080/Ventas/Lista", //ruta de la API consultaremos.
      
          success: function(data) {
	      lista = document.getElementById("cuerpoTabla");
         // lista.innerHTML = '';
          $.each(data, function(i, item) {
          
         
         var tr = document.createElement("tr");
       // var idtr = document.createAttribute("id");//tr con id
      //  idtr.value=item.bCedulaCliente;
      //   tr.setAttributeNode(idtr);
      
          var columna1 = document.createElement("th");
          columna1.innerHTML = item.aCodigo;
          var columna2 = document.createElement("th");
          columna2.innerHTML = item.bCedulaCliente;
          var columna3 = document.createElement("th");
          columna3.innerHTML = item.cCedulaUsuario;
          var columna4 = document.createElement("th");
          columna4.innerHTML = item.dIvaVenta;
           var columna5 = document.createElement("th");
          columna5.innerHTML = item.eTotalVenta;
           var columna6 = document.createElement("th");
          columna6.innerHTML = item.fValorVenta;

         

          lista.appendChild(tr);
          tr.appendChild(columna1);
          tr.appendChild(columna2);
          tr.appendChild(columna3);
          tr.appendChild(columna4);
          tr.appendChild(columna5);
          tr.appendChild(columna6);
       
         });
        }
         }) };

cons()
function cons(){
	
	$.ajax({
	          type:"GET",
              url:"http://localhost:8080/Ventas/Cod",
             dataType: "json",
             error: function(){
	           alert("Error en la peticion");
       }
    }).done(function(data){
	      console.log(data.aCodigo);
          cod = data.aCodigo;
          coda=cod+1;
          document.getElementById('serial').value=coda;
      
 })
    
	
}


$('#consultarCliente').click(function(event){
         var cedula = $("#cedula").val();
       
        $.ajax({
	          type:"GET",
              url:"http://localhost:8080/Login/Log",
             dataType: "json",
             error: function(){
	           alert("Error en la peticion");
       }
    }).done(function(data){
	      console.log(data.cedulaUser);
          
          document.getElementById('cedulaUsuario').value=data.cedulaUser;
      
 })
    

})

		
	$('#consultarCliente').click(function(event){
         var cedula = $("#cedula").val();
       
        $.ajax({
	          type:"GET",
              url:"http://localhost:8080/Clientes/"+cedula,
             dataType: "json",
             error: function(){
	           alert("Error en la peticion");
       }
    }).done(function(data){
	      console.log(data.nombreCliente);
          
          document.getElementById('nCliente').value=data.nombreCliente;
      
 })
    

})


  //consulta producto 1
	$('#consultarp1').click(function(event){
         var codigo = $("#p1").val();
		 var cantidad =$("#cantidad1").val();
		 var venta2=$("#valorp2").val();
	     var venta3=$("#valorp3").val();
		 var iva2=$("#iva2").val();
		 var iva3=$("#iva3").val();
       console.log(codigo);
        $.ajax({
	          type:"GET",
              url:"http://localhost:8080/Productos/"+codigo,
             dataType: "json",
             error: function(){
	           alert("Error en la peticion");
       }
    }).done(function(data){
	      console.log(data.nombreProducto);
        
         
		document.getElementById('np1').value=data.nombreProducto;
		
		
		P=data.precioCompra;
		I=data.ivaCompra;
		Pi=(P*(I/100))*cantidad; 
		valorP=P*cantidad;
		tVenta=valorP+parseInt(venta2,10)+parseInt(venta3,10);
		tIva=Pi+parseInt(iva2,10)+parseInt(iva3,10)
		Total=tVenta+tIva;
		
		console.log(P)
		console.log(iva2);
		console.log(typeof iva2);
		console.log(tVenta);
		console.log(typeof tVenta);
		console.log(typeof valorP);
		console.log();
	
        document.getElementById('valorp1').value=valorP;
		document.getElementById('iva1').value=Pi;
		document.getElementById('tventa').value=tVenta;
		document.getElementById('tIva').value=tIva
		document.getElementById('Total').value=Total;
           
 })
    
})

  //consulta producto 2
	$('#consultarp2').click(function(event){
         var codigo = $("#p2").val();
		 var cantidad =$("#cantidad2").val();
		 var venta1=$("#valorp1").val();
	     var venta3=$("#valorp3").val();
		 var iva1=$("#iva1").val();
		 var iva3=$("#iva3").val();
       console.log(codigo);
        $.ajax({
	          type:"GET",
              url:"http://localhost:8080/Productos/"+codigo,
             dataType: "json",
             error: function(){
	           alert("Error en la peticion");
       }
    }).done(function(data){
	      console.log(data.nombreProducto);
          
          
		document.getElementById('np2').value=data.nombreProducto;
       P=data.precioCompra;
		
		
		valorP=P*cantidad;
        document.getElementById('valorp2').value=valorP;

		P=data.precioCompra;
		I=data.ivaCompra;
		Pi=(P*(I/100))*cantidad; 
		valorP=P*cantidad;
		tVenta=valorP+parseInt(venta1,10)+parseInt(venta3,10);
		tIva=Pi+parseInt(iva1,10)+parseInt(iva3,10)
		Total=tVenta+tIva;
		
	
        document.getElementById('valorp2').value=valorP;
		document.getElementById('iva2').value=Pi;
		document.getElementById('tventa').value=tVenta;
		document.getElementById('tIva').value=tIva
		document.getElementById('Total').value=Total;
           
 })
    
})

  //consulta producto 3
	$('#consultarp3').click(function(event){
         var codigo = $("#p3").val();
		 var cantidad =$("#cantidad3").val();
		 var venta1=$("#valorp1").val();
	     var venta2=$("#valorp2").val();
		 var iva1=$("#iva1").val();
		 var iva2=$("#iva2").val();
       console.log(codigo);
        $.ajax({
	          type:"GET",
              url:"http://localhost:8080/Productos/"+codigo,
             dataType: "json",
             error: function(){
	           alert("Error en la peticion");
       }
    }).done(function(data){
	      console.log(data.nombreProducto);
          
          
		document.getElementById('np3').value=data.nombreProducto;
         P=data.precioCompra;
		
		
		valorP=P*cantidad;
        document.getElementById('valorp3').value=valorP;

		P=data.precioCompra;
		I=data.ivaCompra;
		Pi=(P*(I/100))*cantidad; 
		valorP=P*cantidad;
		tVenta=valorP+parseInt(venta1,10)+parseInt(venta2,10);
		tIva=Pi+parseInt(iva1,10)+parseInt(iva2,10)
		Total=tVenta+tIva;
		
	
        document.getElementById('valorp3').value=valorP;
		document.getElementById('iva3').value=Pi;
		document.getElementById('tventa').value=tVenta;
		document.getElementById('tIva').value=tIva
		document.getElementById('Total').value=Total;
		
           
 })
    
})

$('#envio').click(function(event){
    var consecutivo = $("#serial").val();
    var cedulaCliente = $("#cedula").val();
    var cedulaUsuario = $("#cedulaUsuario").val();
    var totalIva = $("#tIva").val();
    var totalVenta = $("#tventa").val();
    var valorVenta = $("#Total").val();
     console.log(consecutivo);
     console.log(cedulaCliente);
     console.log(cedulaUsuario);
     console.log(totalIva);
     console.log(totalVenta);
     console.log(valorVenta);
    //JSON
    var venta={
      
       bCedulaCliente:cedulaCliente,
	   cCedulaUsuario:cedulaUsuario,
       dIvaVenta:totalIva,
       eTotalVenta:totalVenta,
	   fValorVenta:valorVenta
    }

  
 $.ajax({
        type:"POST",
        data:JSON.stringify(venta), //esto permite convertir el string de user a objeto JSON
        url:"http://localhost:8080/Ventas/",
        contentType:"application/json"
    })
    
    
   
    
})
