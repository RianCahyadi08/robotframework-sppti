*** Settings ***
Documentation       SC01 - View Page Master Data - Pola
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/pola.robot

*** Test Cases ***
TC01 - View Master Data - Pola
    [Documentation]     SC01 - View Page Master Data - Pola
    [Tags]      TC01 - View Master Data - Pola
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    pola.Move To Module Pola
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Master Data - Pola
    [Documentation]     SC01 - View Page Master Data - Pola
    [Tags]      TC02 - Search Master Data - Pola
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    pola.Move To Module Pola
    pola.Input Kata Kunci    ptrn108
    pola.Click Btn Cari
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Filter Master Data - Pola
    [Documentation]     SC01 - View Page Master Data - Pola
    [Tags]      TC03 - Filter Master Data - Pola
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    pola.Move To Module Pola
    pola.Click Btn Filter Kolom
    pola.Click Btn Cari
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - View Detail Master Data - Pola
    [Documentation]     SC01 - View Page Master Data - Pola
    [Tags]      TC04 - View Detail Master Data - Pola
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    pola.Move To Module Pola
    pola.Click Detail
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser