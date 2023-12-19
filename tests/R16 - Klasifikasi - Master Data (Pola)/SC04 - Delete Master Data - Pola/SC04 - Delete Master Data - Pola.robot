*** Settings ***
Documentation       SC04 - Delete Master Data - Pola
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/pola.robot

*** Test Cases ***
TC01 - Delete Master Data - Pola
    [Documentation]     SC04 - Delete Master Data - Pola
    [Tags]      TC01 - Delete Master Data - Pola
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    pola.Move To Module Pola
    pola.Input Kata Kunci    nama pola rian dua
    pola.Click Btn Cari
    pola.Delete
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser