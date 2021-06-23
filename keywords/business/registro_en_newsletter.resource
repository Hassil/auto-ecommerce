*** Keywords ***

Inscribir newsletter
    [Arguments]      ${_correo_newsletter}
    SeleniumLibrary.Click Element    ${_icon_home}
    BuiltIn.Set Test Variable    ${_STEP}    Se navega a la homepage
    Step    ${_STEP}
    SeleniumLibrary.Wait Until Element Is Visible    ${_input_Correo_newsletter}     ${_timeout}
    SeleniumLibrary.Input Text    ${_input_Correo_newsletter}    ${_correo_newsletter}
    SeleniumLibrary.Click Element    ${_btn_registro_newletter}
    SeleniumLibrary.Wait Until Element Is Visible    ${_Popup_registro_satisfactorio}     ${_timeout}    No se realizo el registro de ${_correo_newsletter}
    SeleniumLibrary.Capture Page Screenshot      mail_newsletter.png
    SeleniumLibrary.Click Element    ${_btn_registro_aceptar}
    BuiltIn.Set Test Variable    ${_STEP}    Se registra ${_correo_newsletter} al newsletter
    Step    ${_STEP}
