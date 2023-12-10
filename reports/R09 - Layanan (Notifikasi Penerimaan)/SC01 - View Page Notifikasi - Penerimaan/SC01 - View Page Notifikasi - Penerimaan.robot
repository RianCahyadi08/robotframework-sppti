*** Settings ***
Documentation       SC01 - View Page Notifikasi - Pengirim
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/notifikasi_penerimaan.robot

*** Test Cases ***
TC01 - View Notifikasi - Pengirim
    [Documentation]     SC01 - View Page Notifikasi - Pengirim
    [Tags]      TC01 - View Notifikasi - Pengirim
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    notifikasi_penerimaan.Move To Module Notifikasi Penerimaan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser