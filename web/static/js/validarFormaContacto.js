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

    } );
