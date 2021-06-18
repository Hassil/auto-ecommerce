***Settings***
Library   SeleniumLibrary
Resource   ../../Test Data/Common.resource
Resource   ../../Excel.resource

***keywords***
Envio correo transaccional
      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_articulo} en el campo Buscar tus productos
      Step   ${STEP}
      Wait Until Element Is Visible ${FrameBuscar}   ${TIMEOUT}
      Input text   ${FrameBuscar}   ${_articulo}

      SeleniumLibrary.Click Element   ${STEP}   Seleccionar boton en el boton Buscar
      Step   ${STEP}
      Wait Until Element Is Visible ${btnBuscar}   ${TIMEOUT}
      Click Element    ${btnBuscar}

      SeleniumLibrary.Click Element   ${STEP}   Seleccionar boton en el boton Comprar
      Step   ${STEP}
      Wait Until Element Is Visible ${btnComprar}   ${TIMEOUT}
      Click Element    ${btnComprar}

      SeleniumLibrary.Click Element   ${STEP}   Seleccionar boton en el boton Comprar pantalla alterna
      Step   ${STEP}
      Wait Until Element Is Visible ${btnComprarPA}   ${TIMEOUT}
      Click Element    ${btnComprarPA}

      SeleniumLibrary.Click Element   ${STEP}   Seleccionar boton en el boton Continuar con la compra
      Step   ${STEP}
      Wait Until Element Is Visible ${btnContinuarCompra}   ${TIMEOUT}
      Click Element    ${btnContinuarCompra}

      SeleniumLibrary.Click Element   ${STEP}   Seleccionar boton en el boton Pagar
      Step   ${STEP}
      Wait Until Element Is Visible ${btnpagar}    ${TIMEOUT}
      Click Element    ${btnpagar}

      SeleniumLibrary.Click Element   ${STEP}   Seleccionar boton en el boton Continuar
      Step   ${STEP}
      Wait Until Element Is Visible ${btncontinuar}    ${TIMEOUT}
      Click Element    ${btncontinuar}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_correo} en el campo Correo
      Step   ${STEP}
      Wait Until Element Is Visible ${txtcorreo}   ${TIMEOUT}
      Input text   ${txtcorreo}   ${_correo}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_nombre} en el campo Nombre
      Step   ${STEP}
      Wait Until Element Is Visible ${txtnombre}   ${TIMEOUT}
      Input text   ${txtnombre}   ${_nombre}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_apellidos} en el campo Apellidos
      Step   ${STEP}
      Wait Until Element Is Visible ${txtapellidos}   ${TIMEOUT}
      Input text   ${txtapellidos}   ${_apellidos}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_telefono} en el campo Telefono
      Step   ${STEP}
      Wait Until Element Is Visible ${txttelefono}   ${TIMEOUT}
      Input text   ${txttelefono}   ${_telefono}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_calle} en el campo Calle
      Step   ${STEP}
      Wait Until Element Is Visible ${txtcalle}   ${TIMEOUT}
      Input text   ${txtcalle}   ${_calle}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_numeroexterior} en el campo Numero exterior
      Step   ${STEP}
      Wait Until Element Is Visible ${txtnumeroe}   ${TIMEOUT}
      Input text   ${txtnumeroe}   ${_numeroesterior}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_cp} en el campo Codigo postal
      Step   ${STEP}
      Wait Until Element Is Visible ${txtcp}   ${TIMEOUT}
      Input text   ${txtcp}   ${_cp}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_colonia} en el campo Colonia
      Step   ${STEP}
      Wait Until Element Is Visible ${txtcolonia}   ${TIMEOUT}
      Input text   ${txtcolonia}   ${_colonia}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_estado} en el campo Estado
      Step   ${STEP}
      Wait Until Element Is Visible ${txtestado}   ${TIMEOUT}
      Input text   ${txtestado}   ${_estado}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_ciudad} en el campo Ciudad
      Step   ${STEP}
      Wait Until Element Is Visible ${txtciudad}   ${TIMEOUT}
      Input text   ${txtciudad}   ${_ciudad}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_entrecalles} en el campo Entre calles
      Step   ${STEP}
      Wait Until Element Is Visible $${txtentrecalles}   ${TIMEOUT}
      Input text   ${txtentrecalles}   ${_entrecalles}

      SeleniumLibrary.Click Element   ${STEP}   Ingresar el dato ${_referencias} en el campo
      Step   ${STEP}
      Wait Until Element Is Visible ${txtreferencias}   ${TIMEOUT}
      Input text   ${txtreferencias}   ${_referencias}

      SeleniumLibrary.Click Element   ${STEP}   Seleccionar boton en el boton Elige forma de pago
      Step   ${STEP}
      Wait Until Element Is Visible ${btnformapago}    ${TIMEOUT}
      Click Element    ${btnformapago}

      SeleniumLibrary.Click Element   ${STEP}   Seleccionar boton en el boton Elige el metodo de pago
      Step   ${STEP}
      Wait Until Element Is Visible ${btnmetodopago}  ${TIMEOUT}
      Click Element    ${btnmetodopago}

      SeleniumLibrary.Click Element   ${STEP}   Seleccionar boton en el boton BanCoppel
      Step   ${STEP}
      Wait Until Element Is Visible ${btnbancoppel}  ${TIMEOUT}
      Click Element    ${btnbancoppel}

      SeleniumLibrary.Click Element   ${STEP}   Seleccionar boton en el boton Revisar orden
      Step   ${STEP}
      Wait Until Element Is Visible ${btnrevisarorden}  ${TIMEOUT}
      Click Element    ${btnrevisarorden}

      SeleniumLibrary.Click Element   ${STEP}   Seleccionar boton en el boton Confirmar compra
      Step   ${STEP}
      Wait Until Element Is Visible ${btnconfirmarcompra}  ${TIMEOUT}
      Click Element    ${btnconfirmarcompra}

      Log To Console   Buscar artículo
