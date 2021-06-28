***Settings***
Resource      ../common/load_components.resource

***Keywords***

Cerrar cuadro informativo
    SeleniumLibrary.Wait Until Element Is Visible   ${_btn_cerrar_texto_informativo}   ${_timeout}
    SeleniumLibrary.Click Element   ${_btn_cerrar_texto_informativo}
    BuiltIn.Set Test Variable    ${_STEP}    Se cerro la modal
    Step    ${_STEP}

Click en el link agregar celular
    SeleniumLibrary.Wait Until Element Is Visible   ${_link_numero_celular}   ${_timeout}
    SeleniumLibrary.Click element    ${_link_numero_celular}

Liga tu numero telefonico a tu cuenta
    SeleniumLibrary.Wait Until Element Is Visible   ${_input_numero_de_celular}   ${_timeout}
    SeleniumLibrary.Input Text   ${_input_numero_de_celular}   ${_DATA}[_numero_celular]
    Set Test Variable   ${STEP}   Se ingresó ${_DATA}[_numero_celular] en el campo Número de celular
    Step   ${STEP}
    SeleniumLibrary.Capture Page Screenshot       celular_ingresado.png
