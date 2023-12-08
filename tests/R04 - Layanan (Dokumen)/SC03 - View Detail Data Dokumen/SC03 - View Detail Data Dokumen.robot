*** Settings ***
Documentation       SC01 - View Page Dokumen
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/dokumen.robot

*** Test Cases ***
TC01 - View Dokumen
    [Documentation]     SC01 - View Page Dokumen
    [Tags]      TC01 - View Dokumen
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    dokumen.Move To Module Dokumen
    dokumen.Detail
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser