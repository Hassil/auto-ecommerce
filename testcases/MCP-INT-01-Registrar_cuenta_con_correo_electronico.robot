*** Settings ***
Resource    ../keywords/common/load_components.resource

*** Test Cases ***

Registrar cuenta con correo electrónico
      [Documentation]       Usuario crea cuenta con su correo electrónico
      [Tags]      Funcional
      Leer archivo excel    ${_nombre_hoja_mcp_01}
      Configuracion test
      Ingresar a la pagina
      Seleccionar menu inicia sesión
      Seleccionar opción      ${_opcion_crear_cuenta}     ${_btn_crear_cuenta}      ${_label_crear_cuenta}
      Cerrar navegador
