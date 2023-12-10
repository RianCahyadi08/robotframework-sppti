*** Settings ***
Documentation       SC02 - Create Data Manajemen Menu
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_menu.robot

*** Test Cases ***
TC01 - Create Data Manajemen Menu
    [Documentation]     SC02 - Create Data Manajemen Menu
    [Tags]      TC01 - Create Data Manajemen Menu
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_menu.Move To Management Menu
    management_menu.Click Btn Tambah Menu
    management_menu.Input Nama Menu    namaMenuRianSatu
    management_menu.Select Module    namaModuleRian
    management_menu.Checklist Induk Menu
    management_menu.Input Url    http://10.31.31.107/admin/namaModuleRian/
    management_menu.Select Icon    text
    management_menu.Click Btn Submit
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser