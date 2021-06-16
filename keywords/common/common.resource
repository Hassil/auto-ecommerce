*** Settings ***
Resource      load_components.resource

*** Variables ***
${_step_number}    0

*** Keywords ***

Ingresar a la pagina
      [Documentation]    Permite abrir el navegador y entrar a la url solicitada
      SeleniumLibrary.Open Browser    ${_DATA}[_url]    ${_DATA}[_navegador]
      BuiltIn.Set Test Variable    ${_STEP}    Se ingresó a ${_DATA}[_url] en el navegador
      Step    ${_STEP}
      SeleniumLibrary.Maximize Browser Window
      SeleniumLibrary.Page Should Contain Element     ${_logo_coppel}
      SeleniumLibrary.Capture Page Screenshot       Coppel_home_page.png
      BuiltIn.Set Test Variable    ${_STEP}    Se cargó la página ${_DATA}[_url]
      Step    ${_STEP}

Cerrar navegador
      SeleniumLibrary.Close Browser
      BuiltIn.Set Test Variable    ${_STEP}    Finalizó el test
      Step    ${_STEP}

Step
      [Documentation]    Permite llevar el control de los pasos que se estan ejecutando
      [Arguments]    ${message}
      ${_step_number}=    Evaluate    ${_step_number} + 1
      Log console and log    Step ${_step_number}: ${message}
      BuiltIn.Set Test Variable    ${_step_number}


Log console and log
      [Documentation]    Permite ingresar un mensaje en consola y log
      [Arguments]    ${message}
      ${_timestamp} =    BuiltIn.Get Time
      BuiltIn.Log  ${message}
      BuiltIn.Log To Console  ${_timestamp} -- ${message}

Configuracion test
      SeleniumLibrary.Set Screenshot Directory     ${EXECDIR}\\Evidencia
