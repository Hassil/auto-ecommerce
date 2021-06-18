*** Settings ***
Resource    ../keywords/common/load_components.resource

*** Test Cases ***

Envío de correo transaccional
      [Documentation]       Usuario busca artículo
      [Tags]      Funcional
      Leer archivo excel    ${_nombre_hoja_mcp_01}
      Configuracion test
      Ingresar a la pagina
      Envio correo transaccional
