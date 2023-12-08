*** Settings ***
Documentation       SC06 - Delete Data Manajemen Modul
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_module.robot

*** Test Cases ***
TC01 - Delete Data Manajemen Modul
    [Documentation]     SC06 - Delete Data Manajemen Modul
    [Tags]      TC01 - Delete Data Manajemen Modul
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_module.Move To Management Module
    management_module.Delete
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser