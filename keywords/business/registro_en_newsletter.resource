*** Settings ***
Resource    ../locators/business/registro_en_newsletter.resource

*** Keywords ***

Quitar Popup ver estado cuenta si existe
    ${status}​ =    Run Keyword And Return Status       SeleniumLibrary.Wait Until Page Contains Element    ${_pupup_close}​​​​​​​     10s
    Run Keyword If    "${​​​​​​​status}​​​​​​​"=="True"    SeleniumLibrary.Click Element    ${_pupup_close}
    Run Keyword If    "${​​​​​​​status}​​​​​​​"=="False"    Run Keywords


Inscribir newsletter
    [Arguments]      ${_correo_newsletter}
    SeleniumLibrary.Click Element    ${_icon_home}
    BuiltIn.Set Test Variable    ${_STEP}    Se navega a la homepage
    Step    ${_STEP}
    SeleniumLibrary.Wait Until Element Is Visible    ${_input_Correo_newsletter}     ${_timeout}
    SeleniumLibrary.Input Text    ${_input_Correo_newsletter}    ${_correo_newsletter}
    #SeleniumLibrary.Click Element    ${_btn_registro_newletter}
    BuiltIn.Set Test Variable    ${_STEP}    Se registra ${_correo_newsletter} al newsletter
    Step    ${_STEP}
