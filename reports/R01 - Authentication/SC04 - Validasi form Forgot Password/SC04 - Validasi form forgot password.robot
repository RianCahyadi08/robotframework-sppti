*** Settings ***
Documentation       SC04 - Validasi form Forgot Password
Library             SeleniumLibrary
Resource            ../../../libs/login.robot

*** Test Cases ***
TC01 - Validasi field dengan menginput username
    [Documentation]     SC04 - Validasi form Forgot Password
    [Tags]      TC01 - Validasi field dengan menginput username
    login.Open Browser Website

    login.Click Btn Login
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Validasi field dengan menginput email
    [Documentation]     SC04 - Validasi form Forgot Password
    [Tags]      TC01 - Validasi field dengan menginput username
    login.Open Browser Website

    login.Click Btn Login
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser