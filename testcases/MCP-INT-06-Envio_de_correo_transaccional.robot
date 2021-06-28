*** Settings ***
Resource    ../keywords/common/load_components.resource

*** Test Cases ***

Envío de correo transaccional
      #[Documentation]       Usuario busca artículo
      #[Tags]      Funcional
      Leer archivo excel    ${_nombre_hoja_mcp_06}
      Configuracion test
      Ingresar a la pagina
      Ingresar un articulo    ${_DATA}[_articulo]
      Buscar un articulo
      Comprar un articulo
      Informacion del cliente    ${_DATA}[_correo]    ${_DATA}[_nombre]    ${_DATA}[_apellidos]    ${_DATA}[_telefono]
      Domicilio de entrega    ${_DATA}[_calle]    ${_DATA}[_numeroext]    ${_DATA}[_cp]    ${_DATA}[_colonia]    ${_DATA}[_estado]    ${_DATA}[_ciudad]    ${_DATA}[_entrecalles]    ${_DATA}[_referencias]
      Metodo de pago
