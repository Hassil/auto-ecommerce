***Settings***
Resource      ../keywords/common/load_components.resource


***Test Cases***

telefono liga a tu cuenta
   [Documentation]        Usuario liga su cuenta credito coppel
   [Tags]      Funcional
   Leer archivo excel    ${_mcp_int_04}
   Configuracion test
   Ingresar a la pagina
   Seleccionar menu inicia sesión
   Seleccionar opción   ${_opcion_iniciar_sesion}   ${_btn_inicar_sesion}   ${_label_login}
   Iniciar sesion
   Cerrar cuadro informativo
   Click en el link agregar celular
   Liga tu numero telefonico a tu cuenta
   #Cerrar navegador
