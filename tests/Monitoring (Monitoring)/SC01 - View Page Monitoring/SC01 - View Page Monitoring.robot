*** Settings ***
Documentation       SC01 - View Page Monitoring
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/monitoring_monitoring.robot

*** Test Cases ***
TC01 - View Page Monitoring
    [Documentation]     SC01 - View Page Monitoring
    [Tags]      TC01 - View Page Monitoring
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    monitoring_monitoring.Move To Module Monitoring Monitoring
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser