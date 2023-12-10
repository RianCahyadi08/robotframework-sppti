*** Settings ***
Documentation       SC02 - Filter Data Endpoint
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/endpoint.robot

*** Test Cases ***
TC01 - Filter Data Endpoint
    [Documentation]     SC02 - Filter Data Endpoint
    [Tags]      TC01 - Filter Data Endpoint
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    endpoint.Move To Module Endpoint
    endpoint.Click Btn Filter
    endpoint.Input Nama    KPK
    endpoint.Input Endpoint    notifikasi
    endpoint.Click Btn Apply
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser