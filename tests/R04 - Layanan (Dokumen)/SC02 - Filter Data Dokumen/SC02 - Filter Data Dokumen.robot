*** Settings ***
Documentation       SC02 - Filter Data Dokumen
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/dokumen.robot

*** Test Cases ***
TC01 - Filter Data Dokumen
    [Documentation]     SC02 - Filter Data Dokumen
    [Tags]      TC01 - Filter Data Dokumen
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    dokumen.Move To Module Dokumen
    dokumen.Click Btn Filter
    dokumen.Input TX ID    2035f510-3a50-4748-8fc0-b1be90d3e855
    dokumen.Input No Dokumen    33/pid.b/2019/pn tng
    dokumen.Input Kode Satker Penerima    005.097598
    dokumen.Click Btn Apply
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser