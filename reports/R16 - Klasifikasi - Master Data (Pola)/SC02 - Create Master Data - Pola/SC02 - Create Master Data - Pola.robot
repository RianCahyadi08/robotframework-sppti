*** Settings ***
Documentation       SC02 - Create Master Data - Pola
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/pola.robot

*** Test Cases ***
TC01 - Create Master Data - Pola
    [Documentation]     SC02 - Create Master Data - Pola
    [Tags]      TC01 - Create Master Data - Pola
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    pola.Move To Module Pola
    pola.Click Btn Tambah Data
    pola.Input Nama Pola    nama pola rian dua
    pola.Input Pola    Lorem ipsum dolor sit amet
    pola.Click Btn Confirm
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser