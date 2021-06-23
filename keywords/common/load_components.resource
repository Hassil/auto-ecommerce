*** Settings ***
#Aqui se manda a llamar todos los recursos o librerias que se requieren
Library     SeleniumLibrary
Library    ../../libraries/Excel.py
Library    OperatingSystem

Resource      inicio.resource
Resource      Excel.resource
Resource      common.resource
Resource      ../../locators/common/common.locators.resource
Resource      ../../locators/common/inicio.locators.resource
Resource      ../../locators/common/excel.locators.resource
Resource      inicio_sesion.resource
Resource      ../../locators/common/inicio_sesion.locators.resource
Resource      ../business/credito_coppel.resource
Resource      ../../locators/common/credito_coppel.locators.resource
Resource      ../business/ligar_telefono_cuenta.resource
Resource      ../../locators/common/ligar_telefono_a_la_cuenta.locators.resource
