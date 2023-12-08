*** Settings ***
Documentation       SC04 - View Detail Data Manajemen Modul
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_module.robot

*** Test Cases ***
TC01 - View Detail Data Manajemen Modul
    [Documentation]     SC04 - View Detail Data Manajemen Modul
    [Tags]      TC01 - View Detail Data Manajemen Modul
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_module.Move To Management Module
    management_module.Detail
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser