/**
 * 
 */
document.querySelector('#archivo')
.addEventListener('Change',leerArchivo,false);

function nameFile(){
    var name=document.getElementById('fileUpload').files[0].name; //obtener nombre de archivo
    document.getElementById('file').innerHTML=name; //aplique los cambios en html
}
function leerArchivo
let reader = new FileReader();