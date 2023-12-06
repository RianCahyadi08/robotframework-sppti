*** Settings ***
Documentation       SC02 - Validasi field username
Library             SeleniumLibrary
Resource            ../../../libs/login.robot

*** Test Cases ***
TC01 - Username tidak boleh mengandung spasi di awal
    [Documentation]     SC02 - Validasi field username
    [Tags]      TC01 - Username tidak boleh mengandung spasi di awal
    login.Open Browser Website
    login.Input Email    ${SPACE}superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Username harus mandatory, tidak boleh kosong
    [Documentation]     SC02 - Validasi field username
    [Tags]      TC02 - Username harus mandatory, tidak boleh kosong
    login.Open Browser Website
    Clear Element Text    email
#    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser