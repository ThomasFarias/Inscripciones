function validarFormaContacto() {
  var nombre = document.forms["formaContacto"]["nombre"]; 
  var telefono =document.forms["formaContacto"]["telefono"] ;
  var mensaje = document.forms["formaContacto"]["mensaje"];
  var correo = document.forms["formaContacto"]["correo"];
  var motivo = document.forms["formaContacto"]["motivo"].index;

  if (nombre == "") {
    alert("Name must be filled out");
    return false;
  }
}