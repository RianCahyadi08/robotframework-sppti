*** Settings ***
Documentation       SC02 - Create Data Konfigurasi Baca Perkara
Library             SeleniumLibrary
Resource            ../../../libs/login.robot
Resource            ../../../libs/konfigurasi_baca_perkara.robot

*** Test Cases ***
TC01 - Create Data Konfigurasi Baca Perkara
    [Documentation]     SC02 - Create Data Konfigurasi Baca Perkara
    [Tags]      TC01 - Create Data Konfigurasi Baca Perkara
    login.Open Browser Website
    login.Input Email    superadmin@gmail.com
    login.Input Password    Superadmin123*@#
    login.Click Btn Login
    konfigurasi_baca_perkara.Move To Module Konfigurasi Baca Perkara
    konfigurasi_baca_perkara.Click Btn Tambah Data
    konfigurasi_baca_perkara.Input Kode Jenis Dokumen    KJD01
    konfigurasi_baca_perkara.Input Keterangan    Lorem ipsum
    konfigurasi_baca_perkara.Input Akses Elemen Nomor    aksesElemenNomor
    konfigurasi_baca_perkara.Input Akses Elemen Nama    aksesElemenNama
    konfigurasi_baca_perkara.Input Akses Elemen UU Pasal    aksesElemenUUPasal
    konfigurasi_baca_perkara.Select Status
    konfigurasi_baca_perkara.Click Btn Submit
    Sleep    3s
    Capture Page Screenshot
    [Teardown]    Close Browser