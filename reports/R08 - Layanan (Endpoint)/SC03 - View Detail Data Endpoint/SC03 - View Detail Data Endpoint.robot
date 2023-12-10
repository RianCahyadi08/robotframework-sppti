*** Settings ***
Documentation       SC01 - View Page Endpoint
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/endpoint.robot

*** Test Cases ***
TC01 - View Detail Data Endpoint
    [Documentation]     SC01 - View Page Endpoint
    [Tags]      TC01 - View Detail Data Endpoint
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    endpoint.Move To Module Endpoint
    endpoint.Detail
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser