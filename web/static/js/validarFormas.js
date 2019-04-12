//Archivo con las reglas de validacion de las distintas formas de la pagina
//Se utiliza el archivo jquery.validate.js descargado de www.jqueryvalidate.com
$( document ).ready( function () {
     
     $( "#formaContacto" ).validate( {
        rules: {
          nombre: "required",
          correo: {
            required: true,
            email: true
          },
          motivo:"required",
          telefono:{
              required:true,
              number:true
          },
          consulta:"required"
          
        },
        messages: {
          nombre: "Debe ingresar un nombre.",
          correo: "Debe ingresar un correo valido.",
          motivo:"Debe seleccionar una motivo.",
          telefono:"Debe ingresar un numero telefonico valido.",
          consulta:"Debe enviar una consulta."
          
        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
          // Add the `invalid-feedback` class to the error element
          error.addClass( "invalid-feedback" );

          if ( element.prop( "type" ) === "checkbox" ) {
            error.insertAfter( element.next( "label" ) );
          } else {
            error.insertAfter( element );
          }
        },
        highlight: function ( element, errorClass, validClass ) {
          $( element ).addClass( "is-invalid" ).removeClass( "is-valid" );
        },
        unhighlight: function (element, errorClass, validClass) {
          $( element ).addClass( "is-valid" ).removeClass( "is-invalid" );
        }
      } );
      
      $( "#formaLogin" ).validate( {
        rules: {
          correo: {
            required: true,
            email: true,
            
          },
          password:{
              required:true,
              password:true
          }      
        },
        messages: {
          correo: "Debe ingresar un correo válido.",
          password:"La contraseña no puede estar vacía"
          
        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
          // Add the `invalid-feedback` class to the error element
          error.addClass( "invalid-feedback" );

          if ( element.prop( "type" ) === "checkbox" ) {
            error.insertAfter( element.next( "label" ) );
          } else {
            error.insertAfter( element );
          }
        },
        highlight: function ( element, errorClass, validClass ) {
          $( element ).addClass( "is-invalid" ).removeClass( "is-valid" );
        },
        unhighlight: function (element, errorClass, validClass) {
          $( element ).addClass( "is-valid" ).removeClass( "is-invalid" );
        }
      } );
      
      $( "#formaAgregar" ).validate( {
        rules: {
          nombre: {
            required: true,
            pattern: "^[a-zA-Z_]*$",
          },
          apellidos: {
            required: true,
            pattern: "^[a-zA-Z_]*$",
          },
          correo: {
            required: true,
            email: true
          },
          password:{
              required:true,
              password:true
          }      
        },
        messages: {
          nombre: "Debe ingresar un nombre valido.",
          correo: "Debe ingresar un correo valido.",
          apellidos:"Debe ingresar un apellido valido. ",
          password:"Este campo es requerido. "
          
        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
          // Add the `invalid-feedback` class to the error element
          error.addClass( "invalid-feedback" );

          if ( element.prop( "type" ) === "checkbox" ) {
            error.insertAfter( element.next( "label" ) );
          } else {
            error.insertAfter( element );
          }
        },
        highlight: function ( element, errorClass, validClass ) {
          $( element ).addClass( "is-invalid" ).removeClass( "is-valid" );
        },
        unhighlight: function (element, errorClass, validClass) {
          $( element ).addClass( "is-valid" ).removeClass( "is-invalid" );
        }
      } );
} );
