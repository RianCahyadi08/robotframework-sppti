*** Settings ***
Documentation       SC06 - Delete Data Manajemen Role
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_role.robot

*** Test Cases ***
TC01 - Delete Data Manajemen Role
    [Documentation]     SC06 - Delete Data Manajemen Role
    [Tags]      TC01 - Delete Data Manajemen Role
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_role.Move To Management Role Module
    management_role.Delete
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser