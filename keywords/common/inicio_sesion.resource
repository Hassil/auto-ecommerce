***Settings***
Resource      load_components.resource 

***Keywords***

Iniciar sesion
      Wait Until Element Is Visible    ${_input_user_name}    ${TIMEOUT}
      Input Text    ${_input_user_name}     ${_DATA}[_usuario]
      Log To Console    Usuario Ingresado
      Input Text    ${_input_password}    ${_DATA}[_password]
      Log To Console    Contraseña Ingresada
      Click Element    ${_btn_login}
