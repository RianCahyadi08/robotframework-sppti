*** Settings ***
Documentation       SC03 - Validasi field password
Library             SeleniumLibrary
Resource            ../../../libs/login.robot

*** Test Cases ***
TC01 - Password harus mandatory, tidak boleh kosong
    [Documentation]     SC03 - Validasi field password
    [Tags]      TC01 - Password harus mandatory, tidak boleh kosong
    login.Open Browser Website
    Clear Element Text    email
    login.Input Email    superadmin@gmail.com
    Clear Element Text    password
#    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser