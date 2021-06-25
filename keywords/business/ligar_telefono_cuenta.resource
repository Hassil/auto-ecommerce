***Settings***
Resource      ../common/load_components.resource

***Keywords***

Cerrar cuadro informativo
    SeleniumLibrary.Wait Until Element Is Visible   ${_btn_cerrar_texto_informativo}   ${TIMEOUT}
    SeleniumLibrary.Click Element   ${_btn_cerrar_texto_informativo}
    BuiltIn.Set Test Variable    ${_STEP}    Se cerro el modal
    Step    ${_STEP}

Click en el link agregar celular
    SeleniumLibrary.Wait Until Element Is Visible   ${_link_numero_celular}   ${TIMEOUT}
    SeleniumLibrary.Click element    ${_link_numero_celular}

Liga tu numero telefonico a tu cuenta
    Set Test Variable   ${STEP}   Ingresa el dato ${_DATA}[_numero_celular] en el campo Numero de celular
    Step   ${STEP}
    SeleniumLibrary.Wait Until Element Is Visible   ${_input_numero_de_celular}   ${TIMEOUT}
    SeleniumLibrary.Input Text   ${_input_numero_de_celular}   ${_DATA}[_numero_celular]
    Capture Page Screenshot
