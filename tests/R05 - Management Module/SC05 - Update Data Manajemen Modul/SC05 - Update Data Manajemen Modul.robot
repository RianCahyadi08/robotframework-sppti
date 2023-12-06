*** Settings ***
Documentation       SC05 - Update Data Manajemen Modul
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_module.robot

*** Test Cases ***
TC01 - Update Data Manajemen Modul
    [Documentation]     SC05 - Update Data Manajemen Modul
    [Tags]      TC01 - Update Data Manajemen Modul
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_module.Move To Management Module
    management_module.Click Icon Edit
    management_module.Input Nama Module    namaModuleRianSatuUpdate
    management_module.Input Urutan Module    3
    management_module.Click Btn Confirm
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser