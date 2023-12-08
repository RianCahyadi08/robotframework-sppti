*** Settings ***
Documentation       SC06 - Delete Data User Management
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/user_management.robot

*** Test Cases ***
TC01 - Delete Data User Management
    [Documentation]     SC06 - Delete Data User Management
    [Tags]      TC01 - Delete Data User Management
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    user_management.Move To Module User Management
    user_management.Delete
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser