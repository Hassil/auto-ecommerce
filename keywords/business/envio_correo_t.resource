***Settings***
Resource   ../common/load_components.resource

***keywords***
Ingresar un articulo
      [Arguments]    ${_articulo}
      SeleniumLibrary.Input Text    ${_frame_buscar}    ${_articulo}
      BuiltIn.Set Test Variable    ${_STEP}    Ingresar el dato ${_articulo} en el campo Buscar producto
      Step    ${STEP}

Buscar un articulo
      SeleniumLibrary.Click Element    ${_btn_buscar}
      BuiltIn.Set Test Variable    ${STEP}    Seleccionar boton buscar
      Step    ${STEP}

Comprar un articulo
      SeleniumLibrary.Click Element    ${_btn_comprar}
      BuiltIn.Set Test Variable    ${STEP}   Seleccionar boton Comprar
      Step    ${STEP}
      Wait Until Element Is Visible    ${_btn_continuar_compra}    ${TIMEOUT}

      SeleniumLibrary.Click Element   ${_btn_continuar_compra}
      BuiltIn.Set Test Variable    ${STEP}   Seleccionar boton Continuar con la Compra
      Step    ${STEP}
      Wait Until Element Is Visible    ${_btn_pagar}    ${TIMEOUT}

      SeleniumLibrary.Click Element    ${_btn_pagar}
      BuiltIn.Set Test Variable    ${STEP}   Seleccionar boton Pagar
      Step    ${STEP}
      Wait Until Element Is Visible    ${_btn_continuar}    ${TIMEOUT}
      SeleniumLibrary.Click Element    ${_btn_continuar}
      BuiltIn.Set Test Variable    ${STEP}   Seleccionar boton Continuar
      Step    ${STEP}

Informacion del cliente
      [Arguments]    ${_correo}    ${_nombre}    ${_apellidos}    ${_telefono}
      SeleniumLibrary.Input Text    ${_txt_correo}    ${_correo}
      BuiltIn.Set Test Variable    ${STEP}    Ingresar el dato ${_correo} en el campo Correo electrónico
      Step    ${STEP}


      SeleniumLibrary.Input Text   ${_txt_nombre}    ${_nombre}
      BuiltIn.Set Test Variable    ${STEP}   Ingresar el dato ${_nombre} en el campo Nombre(s)
      Step    ${STEP}


      SeleniumLibrary.Input Text    ${_txt_apellidos}    ${_apellidos}
      BuiltIn.Set Test Variable    ${STEP}   Ingresar el dato ${_apellidos} en el campo Apellidos
      Step    ${STEP}


      SeleniumLibrary.Input Text    ${_txt_telefono}    ${_telefono}
      BuiltIn.Set Test Variable    ${STEP}   Ingresar el dato ${_telefono} en el campo Teléfono
      Step    ${STEP}


Domicilio de entrega
      [Arguments]   ${_calle}   ${_numeroext}    ${_cp}    ${_colonia}    ${_estado}    ${_ciudad}    ${_entrecalles}    ${_referencias}
      SeleniumLibrary.Input Text    ${_txt_calle}    ${_calle}
      BuiltIn.Set Test Variable    ${STEP}   Ingresar el dato ${_calle} en el campo Calle
      Step    ${STEP}


      SeleniumLibrary.Input Text    ${_txt_numero_e}    ${_numeroext}
      BuiltIn.Set Test Variable    ${STEP}   Ingresar el dato ${_numeroext} en el campo Numero Exterior
      Step    ${STEP}

      Set Selenium Speed   1s
      SeleniumLibrary.Input Text    ${_txt_cp}    ${_cp}
      SeleniumLibrary.Press Keys    none  ENTER
      BuiltIn.Set Test Variable    ${STEP}   Ingresar el dato ${_cp} en el campo Código Postal
      Step    ${STEP}


      SeleniumLibrary.Click Element    ${_txt_colonia}
      Wait Until Element Is Visible    ${_btn_lista}    ${TIMEOUT}
      SeleniumLibrary.Click Element    ${_btn_dato_col}
    #  SeleniumLibrary.Press Keys    none  ARROW_DOWN
    #  SeleniumLibrary.Press Keys    none  ENTER
      BuiltIn.Set Test Variable    ${STEP}   Seleccionar el boton Colonia
      Step    ${STEP}


      SeleniumLibrary.Click Element    ${_txt_estado}
      BuiltIn.Set Test Variable    ${STEP}   Seleccionar el boton Estado
      Step    ${STEP}


      SeleniumLibrary.Click Element    ${_txt_ciudad_municipio}
      BuiltIn.Set Test Variable    ${STEP}   Seleccionar el boton Ciudad o Municipio
      Step    ${STEP}


      SeleniumLibrary.Input Text    ${_txt_entre_calles}    ${_entrecalles}
      BuiltIn.Set Test Variable    ${STEP}   Ingresar el dato ${_entrecalles} en el campo Entre calles
      Step    ${STEP}


      SeleniumLibrary.Input Text    ${_txt_referencias}    ${_referencias}
      BuiltIn.Set Test Variable    ${STEP}   Ingresar el dato ${_referencias} en el campo Referencias
      Step    ${STEP}


      SeleniumLibrary.Click Element    ${_btn_forma_pago}
      BuiltIn.Set Test Variable    ${STEP}    Seleccionar el boton Guardar
      Step    ${STEP}


Metodo de pago
      SeleniumLibrary.Click Element    ${_btn_metodo_pago}
      BuiltIn.Set Test Variable    ${STEP}   Seleccionar boton Elige el Método de Pago
      Step    ${STEP}


      SeleniumLibrary.Click Element    ${_btn_efect_establecimeinto}
      BuiltIn.Set Test Variable    ${STEP}   Seleccionar boton Efectivo en Establecimiento
      Step    ${STEP}


      SeleniumLibrary.Click Element    ${_btn_bancoppel}
      BuiltIn.Set Test Variable    ${STEP}    Seleccionar boton BanCoppel
      Step   ${STEP}

      SeleniumLibrary.Click Element    ${_btn_revisar_orden}
      BuiltIn.Set Test Variable    ${STEP}    Selecionar boton Revisar Orden
      Step    ${STEP}


      #SeleniumLibrary.Click Element    ${_btn_confirmar_compra}
      BuiltIn.Set Test Variable    ${STEP}    Selecionar boton Confirmar compra
      Step    ${STEP}
