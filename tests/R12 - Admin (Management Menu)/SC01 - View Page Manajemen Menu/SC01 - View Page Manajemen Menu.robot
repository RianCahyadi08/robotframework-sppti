*** Settings ***
Documentation       SC01 - View Page Manajemen Menu
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_menu.robot

*** Test Cases ***
TC01 - View Manajemen Menu
    [Documentation]     SC01 - View Page Manajemen Menu
    [Tags]      TC01 - View Manajemen Menu
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_menu.Move To Management Menu
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser