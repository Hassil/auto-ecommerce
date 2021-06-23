*** Keywords ***

Inscribir newsletter
    [Arguments]      ${Correo_newsletter}
    SeleniumLibrary.Click Element    ${_icon_home}
    BuiltIn.Set Test Variable    ${_STEP}    Se navega a la homepage
    Step    ${_STEP}
    SeleniumLibrary.Wait Until Element Is Visible    ${_inputCorreo_newsletter}     ${_timeout}
    SeleniumLibrary.Input Text    ${_inputCorreo_newsletter}    ${Correo_newsletter}
    SeleniumLibrary.Click Element    ${_btn_registro_newletter}
    SeleniumLibrary.Wait Until Element Is Visible    ${_popup_registro_satisfactorio}     ${_timeout}    No se realizo el registro de ${Correo_newsletter}
    SeleniumLibrary.Capture Page Screenshot      mail_newsletter.png
    SeleniumLibrary.Click Element    ${_btn_registro_aceptar}
    BuiltIn.Set Test Variable    ${_STEP}    Se registra ${Correo_newsletter} al newsletter
    Step    ${_STEP}
