*** Settings ***
Documentation       SC04 - Delete Data Konfigurasi Baca Perkara
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/konfigurasi_baca_perkara.robot

*** Test Cases ***
TC01 - Delete Data Konfigurasi Baca Perkara
    [Documentation]     SC04 - Delete Data Konfigurasi Baca Perkara
    [Tags]      TC01 - Delete Data Konfigurasi Baca Perkara
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    konfigurasi_baca_perkara.Move To Module Konfigurasi Baca Perkara
    konfigurasi_baca_perkara.Delete
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser