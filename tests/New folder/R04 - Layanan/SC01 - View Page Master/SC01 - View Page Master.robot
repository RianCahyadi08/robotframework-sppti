*** Settings ***
Documentation       SC01 - View Page Master
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/layanan.robot

*** Test Cases ***
TC01 - View Master
    [Documentation]     SC01 - View Page Master
    [Tags]      TC01 - View Master
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    layanan.Move To Module Layanan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser