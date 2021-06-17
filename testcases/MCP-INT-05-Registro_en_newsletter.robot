*** Settings ***
Resource    ../keywords/common/load_components.resource
Resource    ../keywords/business/registro_en_newsletter.resource

*** Test Cases ***

Registro en newsletter
      [Documentation]       Usuario se registra en el newsletter
      [Tags]      Funcional
      Leer archivo excel    ${_nombre_hoja_mcp_05}
      Configuracion test
      Ingresar a la pagina
      Iniciar sesion    ${_DATA}[_correo_celular]    ${_DATA}[_contrasena]
      Quitar Popup ver estado cuenta si existe
      Inscribir newsletter
