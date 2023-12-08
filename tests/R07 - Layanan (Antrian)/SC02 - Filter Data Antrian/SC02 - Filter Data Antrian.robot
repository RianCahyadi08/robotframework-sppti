*** Settings ***
Documentation       SC02 - Filter Data Antrian
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/antrian.robot

*** Test Cases ***
TC01 - Filter Data Antrian
    [Documentation]     SC02 - Filter Data Antrian
    [Tags]      TC01 - Filter Data Antrian
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    antrian.Move To Module Antrian
    antrian.Click Btn Filter
    antrian.Input TX ID    70c89d0e-5ac3-405c-a518-9d1ada5ff89f
    antrian.Input No Dokumen    33/pid.b/2019/pn tng
    antrian.Click Btn Apply
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser