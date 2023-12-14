*** Settings ***
Library           SeleniumLibrary
*** Keywords ***
Move To Module Monitoring Monitoring
    Go To    http://10.31.31.107/monitoring/
    Wait Until Location Is    http://10.31.31.107/monitoring/