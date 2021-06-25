***Settings***
Resource      ../common/load_components.resource

***keywords***

Registro tu credito coppel

    Set Test Variable   ${STEP}   Ingresa el dato ${_DATA}[_numero_cliente] en el campo Numero de Cliente
    Step   ${STEP}
    Wait Until Element Is Visible   ${_input_cliente}   ${TIMEOUT}
    Input Text   ${_input_cliente}   ${_DATA}[_numero_cliente]
    Capture Page Screenshot
    Step   ${STEP}
    Select From List By Value   ${_selec_list_dia}    ${_DATA}[_dia]
    Select From List By Label   ${_selec_list_mes}    ${_DATA}[_mes]
    Select From List By Value   ${_selec_list_anio}   ${_DATA}[_ano]
