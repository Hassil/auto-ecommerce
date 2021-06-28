***Settings***
Resource      ../common/load_components.resource

***keywords***

Registro tu credito coppel
    SeleniumLibrary.Wait Until Element Is Visible   ${_input_cliente}   ${_timeout}
    SeleniumLibrary.Input Text   ${_input_cliente}   ${_DATA}[_numero_cliente]
    BuiltIn.Set Test Variable   ${STEP}   Se ingresó el dato ${_DATA}[_numero_cliente] en el campo Número de Cliente
    Step   ${STEP}
    SeleniumLibrary.Select From List By Value   ${_selec_list_dia}    ${_DATA}[_dia]
    SeleniumLibrary.Select From List By Label   ${_selec_list_mes}    ${_DATA}[_mes]
    SeleniumLibrary.Select From List By Value   ${_selec_list_anio}   ${_DATA}[_ano]
    BuiltIn.Set Test Variable   ${STEP}   Se ingresó fecha de nacimiento
    Step   ${STEP}
    SeleniumLibrary.Capture Page Screenshot    registro_credito.png
