*** Settings ***
Resource      load_components.resource

*** Keywords ***

Seleccionar menu inicia sesión
      SeleniumLibrary.Click Element     ${btn_menu_inicio_sesion}
      SeleniumLibrary.Capture Page Screenshot     menu_inicia_sesion.png
      BuiltIn.Set Test Variable    ${_STEP}    Se dió clic en el menu inicia sesión
      Step    ${_STEP}

Seleccionar opción
     [Arguments]      ${opcion}    ${elemento_opcion}    ${elemento_validar}
     SeleniumLibrary.Click Element     ${elemento_opcion}
     BuiltIn.Set Test Variable    ${_STEP}      Se dió clic en la opción ${opcion}
     Step    ${_STEP}
     SeleniumLibrary.Wait Until Element Is Visible    ${elemento_validar}     ${_timeout}
     SeleniumLibrary.Capture Page Screenshot      opcion_seleccionada.png
     BuiltIn.Set Test Variable    ${_STEP}    Se mostró la pantalla ${opcion}
     Step    ${_STEP}

Iniciar sesión
     [Arguments]      ${correo_celular}    ${contrasena}
     Seleccionar menu inicia sesión
     Seleccionar opción      ${_opcion_iniciar_sesion}     ${_btn_opcion_iniciar_sesion}      ${_label_iniciar_sesion}
     SeleniumLibrary.Input Text    ${_input_Correo_celular}    ${correo_celular}
     SeleniumLibrary.Input Password    ${_input_contrasena}    ${contrasena}
     SeleniumLibrary.Capture Page Screenshot     iniciar_sesion.png
     BuiltIn.Set Test Variable    ${_STEP}    Se ingresan credenciales de ${correo_celular}
     Step    ${_STEP}
     SeleniumLibrary.Click Element    ${_button_iniciar_sesion}
     BuiltIn.Set Test Variable    ${_STEP}    Se hace login
     Step    ${_STEP}
