*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        http://10.31.31.107/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Module Notifikasi Penerimaan
    Go To    http://10.31.31.107/layanan/notifikasi/penerima/
    Wait Until Location Is    http://10.31.31.107/layanan/notifikasi/penerima/