//Función que válida la FORMA de LOGIN
$(document).ready(function(){
       $( "#enviar" ).click(function()
       {   
          //Datos de los campos de la forma.
          var usuario=$('#correo').val();
          var password=$( '#password' ).val();
          //Se llama al servlet y se le pasan los datos. Si tiene exito
          //recibe data = exito y reenvia a la lista de contactos.
          $.ajax({
               type: "POST",
               url:"ServletLogin",
               data:{"email":usuario,"password":password},
               success: function (data) {
                  if(data=='exito'){
                    $(location).attr('href','ServletContactos');
                  }else{
                      document.getElementById("error").innerHTML = "Correo o Contraseña Incorrectos";
                      document.getElementById("formaLogin").reset();
                  }
               }
             });                                
           });
         });