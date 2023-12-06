*** Settings ***
Documentation       SC01 - View Page Manajemen Modul
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_module.robot

*** Test Cases ***
TC01 - View Manajemen Modul
    [Documentation]     SC01 - View Page Manajemen Modul
    [Tags]      TC01 - View Manajemen Modul
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_module.Move To Management Module
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser