*** Settings ***
Resource    ../keywords/common/load_components.resource

*** Test Cases ***

Registrar cuenta con celuar
      [Documentation]       Usuario crea cuenta con su número celular
      [Tags]      Funcional
      Leer archivo excel    ${_nombre_hoja_mcp_02}
      Configuracion test
      Ingresar a la pagina
      Seleccionar menu inicia sesión
      Seleccionar opción      ${_opcion_crear_cuenta}     ${_btn_crear_cuenta}      ${_label_crear_cuenta}
      Capturar nombre completo
      Capturar usuario y contraseña     ${_DATA}[_usuario]
      Seleccionar género        ${_DATA}[_genero]
      Seleccionar términos y condiciones
      Recibir ofertas       ${_DATA}[_recibe_oferta]
      Cerrar navegador
