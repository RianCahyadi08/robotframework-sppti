*** Settings ***
Documentation       SC02 - Filter Manajemen Role
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_role.robot

*** Test Cases ***
TC01 - Filter Kata Kunci
    [Documentation]     SC02 - Filter Manajemen Role
    [Tags]      TC01 - Filter Kata Kunci
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_role.Move To Management Role Module
    management_role.Search    Admin
    management_role.Click Btn Cari
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser