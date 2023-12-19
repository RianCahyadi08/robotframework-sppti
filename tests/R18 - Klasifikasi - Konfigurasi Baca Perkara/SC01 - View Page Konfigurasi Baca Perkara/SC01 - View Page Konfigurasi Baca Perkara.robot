*** Settings ***
Documentation       SC01 - View Page Konfigurasi Baca Perkara
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/konfigurasi_baca_perkara.robot

*** Test Cases ***
TC01 - View Konfigurasi Baca Perkara
    [Documentation]     SC01 - View Page Konfigurasi Baca Perkara
    [Tags]      TC01 - View Konfigurasi Baca Perkara
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    konfigurasi_baca_perkara.Move To Module Konfigurasi Baca Perkara
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Konfigurasi Baca Perkara
    [Documentation]     SC01 - View Page Konfigurasi Baca Perkara
    [Tags]      TC02 - Search Data Konfigurasi Baca Perkara
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    konfigurasi_baca_perkara.Move To Module Konfigurasi Baca Perkara
    konfigurasi_baca_perkara.Input Kata Kunci    testing2
    konfigurasi_baca_perkara.Click Btn Cari
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View Detail Data Konfigurasi Baca Perkara
    [Documentation]     SC01 - View Page Konfigurasi Baca Perkara
    [Tags]      TC03 - View Detail Data Konfigurasi Baca Perkara
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    konfigurasi_baca_perkara.Move To Module Konfigurasi Baca Perkara
    konfigurasi_baca_perkara.Detail
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser