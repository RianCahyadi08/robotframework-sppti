*** Settings ***
Documentation       SC01 - View Page Pelacakan Perkara
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/pelacakan_perkara.robot

*** Test Cases ***
TC01 - View Pelacakan Perkara
    [Documentation]     SC01 - View Page Pelacakan Perkara
    [Tags]      TC01 - View Pelacakan Perkara
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    pelacakan_perkara.Move To Module Pelacakan Perkara
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Tracking Pelacakan Perkara
    [Documentation]     SC01 - View Page Pelacakan Perkara
    [Tags]      TC02 - Tracking Pelacakan Perkara
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    pelacakan_perkara.Move To Module Pelacakan Perkara
    pelacakan_perkara.Select Satuan Kerja    Pengadilan Negeri Sanggau
    pelacakan_perkara.Select Jenis Dokumen    Penetapan Hari Sidang Pertama
    pelacakan_perkara.Click Btn Lacak
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser