*** Settings ***
Documentation       SC03 - Update Master Data - Pola
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/pola.robot

*** Test Cases ***
TC01 - Update Master Data - Pola
    [Documentation]     SC03 - Update Master Data - Pola
    [Tags]      TC01 - Update Master Data - Pola
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    pola.Move To Module Pola
    pola.Input Kata Kunci    nama pola rian dua
    pola.Click Btn Cari
    pola.Click Edit
    pola.Input Nama Pola    nama pola rian dua update
    pola.Input Pola    Lorem ipsum dolor sit update
    pola.Click Btn Confirm
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser