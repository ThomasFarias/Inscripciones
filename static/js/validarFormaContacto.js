$.validator.setDefaults( {
      submitHandler: function () {
        alert( "submitted!" );
      }
    } );

    $( document ).ready( function () {
      $( "#formaContacto" ).validate( {
        rules: {
          nombre: "required",
          correo: {
            required: true,
            email: true
          }
        },
        messages: {
          nombre: "Inserta el nombre, weon",
          email: "Please enter a valid email address"
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
