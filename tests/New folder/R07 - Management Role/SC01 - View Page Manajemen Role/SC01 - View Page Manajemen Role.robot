*** Settings ***
Documentation       SC01 - View Page Manajemen Role
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_role.robot

*** Test Cases ***
TC01 - View Manajemen Role
    [Documentation]     SC01 - View Page Manajemen Role
    [Tags]      TC01 - View Manajemen Role
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_role.Move To Management Role Module
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser