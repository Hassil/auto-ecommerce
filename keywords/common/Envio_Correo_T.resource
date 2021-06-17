***Settings***
Library   SeleniumLibrary
Resource   ../../Test Data/Common.resource
Resource   ../../Excel.resource

***keywords***
Envio_Correo_Transaccional
      Select Frame   ${FrameBuscar}
      Log To Console   Ingresar artículo
      Sleep    2s
      Input Text    ${txtarticulo}    ${articulo}
      Click Element    ${btnBuscar}
      Sleep   3s
      Log To Console   Seleccionar botón buscar
      Sleep   2s
      Execute Javascript    window y-cord
      Sleep   2s
      
