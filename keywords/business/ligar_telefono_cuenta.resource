***Settings***
Resource      ../common/load_components.resource

***Keywords***

Cerrar cuadro informativo

    SeleniumLibrary.Click Element   ${_btn_cerrar_texto_informativo} Seleccionar el boton de cerrar
  

#Click en el link agregar celular
    #Sleep   1s
    #Click element    ${btnCerrarSesion}

#Liga tu numero telefonico a tu cuenta
    #Set Test Variable   ${STEP}   Ingresa el dato ${_DATA}[_numero_celular] en el campo Numero de celular
    #Step   ${STEP}
    #Wait Until Element Is Visible   ${_input_numero_de_celular}   ${TIMEOUT}
    #Input Text   ${_input_numero_de_celular}   ${_DATA}[_numero_celular]
