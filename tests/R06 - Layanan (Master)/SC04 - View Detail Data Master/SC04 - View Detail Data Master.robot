*** Settings ***
Documentation       SC04 - View Detail Data Master
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/layanan.robot

*** Test Cases ***
TC01 - View Detail Data Master
    [Documentation]     SC04 - View Detail Data Master
    [Tags]      TC01 - View Detail Data Master
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    layanan.Move To Module Layanan
    layanan.Detail Layanan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser