*** Settings ***
Documentation       SC04 - Delete Master Data - Klasifikasi
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/klasifikasi.robot

*** Test Cases ***
TC01 - Delete Master Data - Klasifikasi
    [Documentation]     SC04 - Delete Master Data - Klasifikasi
    [Tags]      TC01 - Delete Master Data - Klasifikasi
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    klasifikasi.Move To Module Klasifikasi
    klasifikasi.Delete
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser