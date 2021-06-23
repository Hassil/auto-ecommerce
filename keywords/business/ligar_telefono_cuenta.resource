***Settings***
Resource      ../common/load_components.resource

***Keywords***

Cerrar cuadro informativo
    Wait Until Element Is Visible   ${_btn_cerrar_texto_informativo}   ${TIMEOUT}
    Click Element   ${_btn_cerrar_texto_informativo}

Click en el link agregar celular
    Wait Until Element Is Visible   ${_link_numero_celular}   ${TIMEOUT}
    Click element    ${_link_numero_celular}

Liga tu numero telefonico a tu cuenta
    Set Test Variable   ${STEP}   Ingresa el dato ${_DATA}[_numero_celular] en el campo Numero de celular
    Step   ${STEP}
    Wait Until Element Is Visible   ${_input_numero_de_celular}   ${TIMEOUT}
    Input Text   ${_input_numero_de_celular}   ${_DATA}[_numero_celular]
