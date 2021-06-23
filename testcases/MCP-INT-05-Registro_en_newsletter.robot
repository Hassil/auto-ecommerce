*** Settings ***
Resource    ../keywords/common/load_components.resource
Resource    ../keywords/business/registro_en_newsletter.resource
Resource    ../locators/business/registro_en_newsletter.locators.resource

*** Test Cases ***

Registro en newsletter
      [Documentation]       Usuario se registra en el newsletter
      [Tags]      Funcional
      Leer archivo excel    ${_nombre_hoja_mcp_05}
      Configuracion test
      Ingresar a la pagina
      Inscribir newsletter    ${_DATA}[_correo_newsletter]
      Close Browser
