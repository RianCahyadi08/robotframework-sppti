*** Settings ***
Documentation       SC03 - Create Data Manajemen Modul
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_module.robot

*** Test Cases ***
TC01 - Create Data Manajemen Modul
    [Documentation]     SC03 - Create Data Manajemen Modul
    [Tags]      TC01 - Create Data Manajemen Modul
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_module.Move To Management Module
    management_module.Click Btn Tambah Data
    management_module.Input Nama Module    namaModuleRianSatu
    management_module.Input Urutan Module    2
    management_module.Click Btn Confirm
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser