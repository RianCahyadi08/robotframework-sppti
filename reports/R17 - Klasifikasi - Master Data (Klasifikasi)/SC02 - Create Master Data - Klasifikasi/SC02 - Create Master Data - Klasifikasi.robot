*** Settings ***
Documentation       SC02 - Create Master Data - Klasifikasi
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/klasifikasi.robot

*** Test Cases ***
TC01 - Create Master Data - Klasifikasi
    [Documentation]     SC02 - Create Master Data - Klasifikasi
    [Tags]      TC01 - Create Master Data - Klasifikasi
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    klasifikasi.Move To Module Klasifikasi
    klasifikasi.Click Btn Tambah Data
    klasifikasi.Input Buku    3
    klasifikasi.Input Bab    2
    klasifikasi.Input Pasal    110
    klasifikasi.Input Ayat    110
    klasifikasi.Input Angka/Huruf/Butir    100/A/-
    klasifikasi.Input UU No    2
    klasifikasi.Input UU Tahun    2000
    klasifikasi.Input Penulisan Buku    Pasal 110 ayat (110) KUHP
    klasifikasi.Input Klasifikasi    > Kejahatan > Terhadap Negara > Makar > pemerintahan
    klasifikasi.Input Kualifikasi    makar menggulingkan pemerintahan
    klasifikasi.Select Status
    klasifikasi.Click Btn Submit
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser