*** Settings ***
Documentation       SC05 - Logout
Library             SeleniumLibrary
Resource            ../../../libs/login.robot

*** Test Cases ***
TC01 - Log out rules
    [Documentation]     SC01 - Logout
    [Tags]      TC01 - Log out rules
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    login.Logout
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser