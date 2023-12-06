*** Settings ***
Documentation       SC05 - Delete Data Manajemen Menu
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_menu.robot

*** Test Cases ***
TC01 - Delete Data Manajemen Menu
    [Documentation]     SC05 - Delete Data Manajemen Menu
    [Tags]      TC01 - Delete Data Manajemen Menu
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_menu.Move To Management Menu
    management_menu.Detail Management Menu
    management_menu.Delete Manajemen Menu
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser