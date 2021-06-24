*** Settings ***
Resource    ../keywords/common/load_components.resource

*** Test Cases ***

Registro en newsletter
      [Documentation]       Usuario se registra en el newsletter
      [Tags]      Funcional
      Leer archivo excel    ${_nombre_hoja_mcp_05}
      Configuracion test
      Ingresar a la pagina
      Inscribir newsletter    ${_DATA}[_correo_newsletter]
      Cerrar navegador
