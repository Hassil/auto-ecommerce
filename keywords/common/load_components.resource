*** Settings ***
#Aqui se manda a llamar todos los recursos o librerias que se requieren
Library     SeleniumLibrary
Library    ../../libraries/Excel.py
Library    OperatingSystem

Resource      inicio.resource
Resource      Excel.resource
Resource      common.resource
Resource      ../bussines/Envio_Correo_T.resource
Resource      ../../locators/common/common.locators.resource
Resource      ../../locators/common/inicio.locators.resource
Resource      ../../locators/common/excel.locators.resource
Resource      ../../locators/common/Envio_Correo_T.locators.resource
