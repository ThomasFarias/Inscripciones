$(document).ready(function(){
       $( "#enviar" ).click(function()
       {   
          var usuario=$('#correo').val();
          var password=$( '#password' ).val();
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