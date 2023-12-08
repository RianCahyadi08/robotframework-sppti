*** Settings ***
Documentation       SC03 - Create Data User Management
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/user_management.robot

*** Test Cases ***
TC01 - Create Data User Management
    [Documentation]     SC03 - Create Data User Management
    [Tags]      TC01 - Create Data User Management
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    user_management.Move To Module User Management
    user_management.Click Btn Tambah User
    user_management.Input Nama Lengkap    Rian Cahyadi
    user_management.Input Email    rian.cahyadi@yopmail.com
    user_management.Input No Telephone    087794875831
    user_management.Input Kata Sandi    P@55word12
    user_management.Input Konfirmasi Kata Sandi    P@55word12
    user_management.Select Jenis Role    Admin
    user_management.Select Nama Instansi    Kepolisian
    user_management.Click Status
    user_management.Click Btn Submit
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser