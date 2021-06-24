*** Settings ***
#Aqui se manda a llamar todos los recursos o librerias que se requieren
Library     SeleniumLibrary
Library    ../../libraries/Excel.py
Library    OperatingSystem

Resource      inicio.resource
Resource      Excel.resource
Resource      common.resource
Resource      ../business/crear_cuenta.resource
Resource      ../../locators/common/common.locators.resource
Resource      ../../locators/common/inicio.locators.resource
Resource      ../../locators/common/excel.locators.resource
Resource      ../../locators/business/crear_cuenta.locators.resource
Resource      ../business/registro_en_newsletter.resource
Resource      ../../locators/business/registro_en_newsletter.locators.resource
