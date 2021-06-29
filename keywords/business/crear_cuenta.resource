*** Settings ***
Resource    ../common/load_components.resource

*** Keywords ***

Capturar nombre completo
      SeleniumLibrary.Wait Until Element Is Visible   ${_txt_nombre_crear_cuenta}       ${_timeout}
      SeleniumLibrary.Input Text      ${_txt_nombre_crear_cuenta}    ${_DATA}[_nombre]
      BuiltIn.Set Test Variable    ${_STEP}      Se ingresó el dato ${_DATA}[_nombre] en el campo Nombre(s).
      Step    ${_STEP}
      SeleniumLibrary.Input Text      ${_txt_apellido_crear_cuenta}          ${_Data}[_apellido]
      BuiltIn.Set Test Variable    ${_STEP}      Se ingresó el dato ${_DATA}[_apellido] en el campo Apellidos.
      Step    ${STEP}

Capturar usuario y contraseña
     [Arguments]      ${usuario}
     SeleniumLibrary.Input Text      ${_txt_celular_correo_crear_cuenta}     ${usuario}
     BuiltIn.Set Test Variable    ${_STEP}      Se ingresó el dato ${usuario} en el campo Correo electrónico o celular.
     Step    ${_STEP}
     SeleniumLibrary.Input Text      ${_txt_contrasena_crear_cuenta}        ${_DATA}[_contrasena]
     BuiltIn.Set Test Variable    ${_STEP}      Se ingresó el dato ${_DATA}[_contrasena] en el campo Contraseña.
     Step    ${_STEP}

Seleccionar género
     [Arguments]     ${genero}
     BuiltIn.Run Keyword If    "${genero}"=="Femenino"    Seleccionar soy mujer
      ...     ELSE IF     "${genero}"=="Masculino"        Seleccionar soy hombre

Seleccionar soy mujer
      SeleniumLibrary.Select Radio Button    ${_rb_genero_crear_cuenta}      ${_dato_female}
      BuiltIn.Set Test Variable    ${_STEP}      Se seleccionó el dato Soy mujer en el campo Elige tu género.
      Step    ${_STEP}

Seleccionar soy hombre
      SeleniumLibrary.Select Radio Button    ${_rb_genero_crear_cuenta}      ${_dato_male}
      BuiltIn.Set Test Variable    ${_STEP}      Se seleccionó el dato Soy hombre en el campo Elige tu género.
      Step    ${_STEP}

Seleccionar términos y condiciones
      SeleniumLibrary.Click Element    ${_check_terminos_crear_cuenta}
      BuiltIn.Set Test Variable    ${_STEP}      Se seleccionó el check de Términos y condiciones y el aviso de privacidad.
      Step    ${_STEP}

Recibir ofertas
      [Arguments]     ${respuesta}
      BuiltIn.Run Keyword If    "${respuesta}"=="Si"    SeleniumLibrary.Click Element     ${_check_recibe_ofertas_crear_cuenta} 
      BuiltIn.Run Keyword If    "${respuesta}"=="No"    BuiltIn.Run Keywords
      SeleniumLibrary.Capture Page Screenshot     campos_ingresados.png

Crear cuenta
      Click Button    ${_btn_crear_cuenta}
