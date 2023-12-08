*** Settings ***
Documentation       SC02 - Filter Manajemen Modul
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_module.robot

*** Test Cases ***
TC01 - Filter Kata Kunci
    [Documentation]     SC02 - Filter Manajemen Modul
    [Tags]      TC01 - Filter Kata Kunci
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_module.Move To Management Module
    management_module.Search    Auth
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser