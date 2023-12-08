*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        http://10.31.31.107/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Module Antrian
    Go To    http://10.31.31.107/layanan/antrian
    Wait Until Location Is    http://10.31.31.107/layanan/antrian
    
Click Btn Filter
    Wait Until Element Is Visible    //*[@class="fs-4 fw-semibold mb-0 ms-4"]
    Click Element    //*[@class="fs-4 fw-semibold mb-0 ms-4"]
    Wait Until Element Is Visible    name:tx_id

Input TX ID
    Wait Until Element Is Visible    name:tx_id
    [Arguments]     ${param}
    Input Text    name:tx_id    ${param}
    Textfield Value Should Be    name:tx_id    ${param}

Input No Dokumen
    Wait Until Element Is Visible    name:nomor
    [Arguments]     ${param}
    Input Text    name:nomor    ${param}
    Textfield Value Should Be    name:nomor    ${param}

Click Btn Apply
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-lg btn-primary mb-5"]
    Click Button    default:Apply
    Sleep    3s

Detail
    Wait Until Element Is Visible    //*[@class="ki-solid ki-eye fs-8"]
    Click Element    //*[@class="ki-solid ki-eye fs-8"]
    Wait Until Page Contains    Detail Data