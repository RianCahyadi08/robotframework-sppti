*** Settings ***
Documentation       SC01 - View Page Data Hasil
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/data_hasil_klasifikasi.robot

*** Test Cases ***
TC01 - View Data Hasil
    [Documentation]     SC01 - View Page Data Hasil
    [Tags]      TC01 - View Data Hasil
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    data_hasil_klasifikasi.Move To Module Data Hasil Klasifikasi
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Data Hasil
    [Documentation]     SC01 - View Page Data Hasil
    [Tags]      TC02 - Search Data Data Hasil
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    data_hasil_klasifikasi.Move To Module Data Hasil Klasifikasi
    data_hasil_klasifikasi.Input Kata Kunci    80db3765-0376-484e-8625-326d8280cc59
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View Detail Data Hasil
    [Documentation]     SC01 - View Page Data Hasil
    [Tags]      TC03 - View Detail Data Hasil
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    data_hasil_klasifikasi.Move To Module Data Hasil Klasifikasi
    data_hasil_klasifikasi.Detail
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser