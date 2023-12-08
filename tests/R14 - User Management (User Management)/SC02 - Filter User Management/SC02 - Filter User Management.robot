*** Settings ***
Documentation       SC02 - Filter User Management
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/user_management.robot

*** Test Cases ***
TC01 - Filter User Management
    [Documentation]     SC02 - Filter User Management
    [Tags]      TC01 - Filter User Management
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    user_management.Move To Module User Management
    user_management.Search    superadmin@gmail.com
    user_management.Click Btn Cari
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser