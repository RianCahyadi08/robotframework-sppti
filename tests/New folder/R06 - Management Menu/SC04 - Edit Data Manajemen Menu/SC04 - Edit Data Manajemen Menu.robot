*** Settings ***
Documentation       SC04 - Edit Data Manajemen Menu
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_menu.robot

*** Test Cases ***
TC01 - Edit Data Manajemen Menu
    [Documentation]     SC04 - Edit Data Manajemen Menu
    [Tags]      TC01 - Edit Data Manajemen Menu
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_menu.Move To Management Menu
    management_menu.Detail Management Menu
    management_menu.Click Icon Edit
    management_menu.Input Nama Menu    namaMenuRianSatuUpdate
    management_menu.Input Url    http://10.31.31.107/admin/namaModuleRianUpdate/
    management_menu.Select Icon    brush
    management_menu.Click Btn Submit
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser