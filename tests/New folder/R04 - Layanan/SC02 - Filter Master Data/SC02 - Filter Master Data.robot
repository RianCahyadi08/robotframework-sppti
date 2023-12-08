*** Settings ***
Documentation       SC02 - Filter Master Data
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/layanan.robot

*** Test Cases ***
TC01 - Filter Master Data
    [Documentation]     SC02 - Filter Master Data
    [Tags]      TC01 - Filter Master Data
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    layanan.Move To Module Layanan
    layanan.Select Module Master    Layanan Jenis Dokumen
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Filter Data
    [Documentation]     SC02 - Filter Master Data
    [Tags]      TC02 - Filter Data
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    layanan.Move To Module Layanan
    layanan.Click Btn Filter
    layanan.Input TX ID    8
    layanan.Click Btn Apply
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Filter Kata Kunci
    [Documentation]     SC02 - Filter Master Data
    [Tags]      TC03 - Filter Kata Kunci
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    layanan.Move To Module Layanan
    layanan.Search    Penghayat kepercayaan
    layanan.Click Btn Cari
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser