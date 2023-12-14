*** Settings ***
Documentation       SC01 - View Page Manajemen Role
Library             SeleniumLibrary
Resource            ../../libs/login.robot
Resource            ../../libs/pola.robot

*** Test Cases ***
TC01 - View Pola
    [Documentation]     SC01 - View Page Manajemen Role
    [Tags]      TC01 - View Manajemen Role
    login.Open Browser Website
    login.Input Email    rian.cahyadi@gmail.com
    login.Input Password    P@55word123
    login.Click Btn Login
#    pola.Move To Module Pola
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser