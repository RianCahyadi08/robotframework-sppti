*** Settings ***
Documentation       SC04 - View Detail Data User Management
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/user_management.robot

*** Test Cases ***
TC01 - View Detail Data User Management
    [Documentation]     SC04 - View Detail Data User Management
    [Tags]      TC01 - View Detail Data User Management
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    user_management.Move To Module User Management
    user_management.Detail
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser