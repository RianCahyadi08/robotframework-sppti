*** Settings ***
Library           SeleniumLibrary
*** Keywords ***
Move To Module Puskarda Main
    Go To    http://10.31.31.107/puskarda-main/live
    Wait Until Location Is    http://10.31.31.107/puskarda-main/live