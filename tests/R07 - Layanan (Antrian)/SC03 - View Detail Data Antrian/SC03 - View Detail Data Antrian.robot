*** Settings ***
Documentation       SC03 - View Detail Data Antrian
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/antrian.robot

*** Test Cases ***
TC01 - View Detail Data Antrian
    [Documentation]     SC03 - View Detail Data Antrian
    [Tags]      TC01 - View Detail Data Antrian
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    antrian.Move To Module Antrian
    antrian.Detail
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser