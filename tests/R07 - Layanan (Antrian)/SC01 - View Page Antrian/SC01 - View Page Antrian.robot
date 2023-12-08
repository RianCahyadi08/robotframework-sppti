*** Settings ***
Documentation       SC01 - View Page Antrian
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/antrian.robot

*** Test Cases ***
TC01 - View Antrian
    [Documentation]     SC01 - View Page Antrian
    [Tags]      TC01 - View Antrian
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    antrian.Move To Module Antrian
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser