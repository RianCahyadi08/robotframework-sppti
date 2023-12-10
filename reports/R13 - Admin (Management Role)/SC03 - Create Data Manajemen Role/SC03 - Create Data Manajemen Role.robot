*** Settings ***
Documentation       SC03 - Create Data Manajemen Role
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/management_role.robot

*** Test Cases ***
TC01 - Create Data Manajemen Role
    [Documentation]     SC03 - Create Data Manajemen Role
    [Tags]      TC01 - Create Data Manajemen Role
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    management_role.Move To Management Role Module
    management_role.Click Btn Tambah Data
    management_role.Input Nama Peran    namaPeranRianSatu
    management_role.Click Tab Selected
    management_role.Click Btn Submit
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser