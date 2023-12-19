*** Settings ***
Documentation       SC03 - Update Master Data - Klasifikasi
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/klasifikasi.robot

*** Test Cases ***
TC01 - Update Master Data - Klasifikasi
    [Documentation]     SC03 - Update Master Data - Klasifikasi
    [Tags]      TC01 - Update Master Data - Klasifikasi
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    klasifikasi.Move To Module Klasifikasi
    klasifikasi.Click Edit
    klasifikasi.Input Buku    3
    klasifikasi.Input Bab    1
    klasifikasi.Input Pasal    107
    klasifikasi.Input Ayat    107
    klasifikasi.Input Angka/Huruf/Butir    100/A/-
    klasifikasi.Input UU No    1
    klasifikasi.Input UU Tahun    1946
    klasifikasi.Input Penulisan Buku    Pasal 107 ayat (1) KUHP
    klasifikasi.Input Klasifikasi    > Kejahatan > Terhadap Negara > Makar > pemerintahan
    klasifikasi.Input Kualifikasi    makar menggulingkan pemerintahan
    klasifikasi.Select Status
    klasifikasi.Click Btn Submit
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser