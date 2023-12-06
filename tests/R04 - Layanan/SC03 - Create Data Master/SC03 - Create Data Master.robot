*** Settings ***
Documentation       SC03 - Create Data Master
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/layanan.robot

*** Test Cases ***
TC01 - Create Data Master
    [Documentation]     SC03 - Create Data Master
    [Tags]      TC01 - Create Data Master
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    layanan.Move To Module Layanan
    layanan.Click Btn Tambah
    layanan.Input Kode    2
    layanan.Input Nama    namaRianDua
    layanan.Select Versi    2023-12-01
    layanan.Click Btn Submit
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser