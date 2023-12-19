*** Settings ***
Documentation       SC01 - View Page Master Data
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/klasifikasi.robot

*** Test Cases ***
TC01 - View Master Data - Klasifikasi
    [Documentation]     SC01 - View Page Master Data
    [Tags]      TC01 - View Master Data - Klasifikasi
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    klasifikasi.Move To Module Klasifikasi
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Master Data - Klasifikasi
    [Documentation]     SC01 - View Page Master Data
    [Tags]      TC02 - Search Master Data - Klasifikasi
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    klasifikasi.Move To Module Klasifikasi
    klasifikasi.Click Btn Filter
    klasifikasi.Select Kolom
    klasifikasi.Input Kata Kunci Pasal   107
    klasifikasi.Click Btn Submit
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Filter Master Data - Klasifikasi
    [Documentation]     SC01 - View Page Master Data
    [Tags]      TC03 - Filter Master Data - Klasifikasi
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    klasifikasi.Move To Module Klasifikasi
    klasifikasi.Click Btn Filter
    klasifikasi.Select Kolom
    klasifikasi.Input Kata Kunci Pasal    108
    klasifikasi.Click Btn Submit
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - View Detail Master Data - Klasifikasi
    [Documentation]     SC01 - View Page Master Data
    [Tags]      TC04 - View Detail Master Data - Klasifikasi
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    klasifikasi.Move To Module Klasifikasi
    klasifikasi.Detail
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser