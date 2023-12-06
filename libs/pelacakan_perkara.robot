*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        http://10.31.31.107/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Module Pelacakan Perkara
    Go To    http://10.31.31.107/pelacakan-spptti
    Wait Until Page Contains    Pelacakan Perkara

Select Satuan Kerja
    Wait Until Element Is Visible    name:kode_satker_penerbit
    Click Element    name:kode_satker_penerbit
    [Arguments]     ${param}
    Press Keys      None   ${param}
    Sleep    1s
    Press Keys      None    ARROW_DOWN
    Sleep    1s
    Press Keys      None    ENTER

Select Jenis Dokumen
    Wait Until Element Is Visible    name:kode_jenis_dokumen
    Click Element    name:kode_jenis_dokumen
    [Arguments]     ${param}
    Press Keys      None   ${param}
    Sleep    1s
    Press Keys      None    ARROW_DOWN
    Sleep    1s
    Press Keys      None    ENTER
    
Input No Dokumen
    Wait Until Element Is Visible    name:nomor
    Clear Element Text    name:nomor
    [Arguments]     ${param}
    Input Text    name:nomor    ${param}
    Textfield Value Should Be    name:nomor    ${param}

Click Btn Lacak
    Wait Until Element Is Visible    id:kt_sign_in_submit
    Click Button    id:kt_sign_in_submit
    Sleep    3s