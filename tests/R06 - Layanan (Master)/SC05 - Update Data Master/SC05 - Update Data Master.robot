*** Settings ***
Documentation       SC05 - Update Data Master
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/layanan.robot

*** Test Cases ***
TC01 - Update Data Masterr
    [Documentation]     SC05 - Update Data Master
    [Tags]      TC01 - Update Data Master
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    layanan.Move To Module Layanan
    layanan.Click Btn Edit
    layanan.Input Kode    3
    layanan.Input Nama    namaRianTigaUpdate
    layanan.Select Versi    2023-12-01
    layanan.Click Btn Submit
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser