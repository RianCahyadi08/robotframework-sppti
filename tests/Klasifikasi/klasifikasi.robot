*** Settings ***
Documentation       SC01 - View Page Manajemen Role
Library             SeleniumLibrary
Resource            ../../libs/login.robot
Resource            ../../libs/klasifikasi.robot

*** Test Cases ***
TC01 - View Pola
    [Documentation]     SC01 - View Page Manajemen Role
    [Tags]      TC01 - View Manajemen Role
    login.Open Browser Website
    login.Input Email    rian.cahyadi@gmail.com
    login.Input Password    P@55word123
    login.Click Btn Login
    klasifikasi.Move To Module Klasifikasi
    klasifikasi.Click Edit
    klasifikasi.Input Buku    buku rian
    klasifikasi.Input Bab    bab satu
    klasifikasi.Input Pasal    pasal 1
    klasifikasi.Input Ayat    1
    klasifikasi.Input Angka/Huruf/Butir    1/a/-
    klasifikasi.Input UU No    11
    klasifikasi.Input UU Tahun    2000
    klasifikasi.Input Penulisan Buku    penulisan buku
    klasifikasi.Input Klasifikasi    klasifikasi rian
    klasifikasi.Input Kualifikasi    kualifikasi rian
    klasifikasi.Select Status
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser