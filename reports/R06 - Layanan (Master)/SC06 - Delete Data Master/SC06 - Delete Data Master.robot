*** Settings ***
Documentation       SC05 - Delete Data Master
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/layanan.robot

*** Test Cases ***
TC01 - Delete Data Master
    [Documentation]     SC05 - Delete Data Master
    [Tags]      TC01 - Delete Data Master
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    layanan.Move To Module Layanan
    layanan.Delete Layanan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser