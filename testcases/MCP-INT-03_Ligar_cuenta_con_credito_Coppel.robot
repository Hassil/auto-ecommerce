***Settings***
Resource      ../keywords/common/load_components.resource


***Test cases***

Ligar cuenta con credito coppel

      [Documentation]        Usuario liga su cuenta credito coppel
      [Tags]      Funcional
      Leer archivo excel    ${_mcp_int_03}
      Configuracion test
      Ingresar a la pagina
      Seleccionar menu inicia sesión
      Seleccionar opción   ${_opcion_iniciar_sesion}   ${_btn_inicar_sesion}   ${_label_login}
      Iniciar sesión
      Registro tu credito coppel
      Cerrar navegador
