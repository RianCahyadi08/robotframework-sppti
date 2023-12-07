*** Settings ***
Documentation       SC04 - View Detail Data Manajemen Role
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_role.robot

*** Test Cases ***
TC01 - View Detail Data Manajemen Role
    [Documentation]     SC04 - View Detail Data Manajemen Role
    [Tags]      TC01 - View Detail Data Manajemen Role
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_role.Move To Management Role Module
    management_role.Detail
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser