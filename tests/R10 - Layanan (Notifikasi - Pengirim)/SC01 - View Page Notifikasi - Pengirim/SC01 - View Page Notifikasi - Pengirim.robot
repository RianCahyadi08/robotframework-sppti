*** Settings ***
Documentation       SC01 - View Page Notifikasi - Pengirim
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/notifikasi_pengiriman.robot

*** Test Cases ***
TC01 - View Notifikasi - Pengirim
    [Documentation]     SC01 - View Page Notifikasi - Pengirim
    [Tags]      TC01 - View Notifikasi - Pengirim
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    notifikasi_pengiriman.Move To Module Notifikasi Pengiriman
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser