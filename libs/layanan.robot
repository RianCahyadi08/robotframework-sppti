*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        http://10.31.31.107/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Module Layanan
    Go To    http://10.31.31.107/layanan/master
    Wait Until Location Is    http://10.31.31.107/layanan/master
    
Select Module Master
    Wait Until Element Is Visible    name:id_parent
    Click Element    name:id_parent
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER
    Sleep    1s

Click Btn Filter
    Wait Until Element Is Visible    //*[@class="fs-4 fw-semibold mb-0 ms-4"]
    Click Element    //*[@class="fs-4 fw-semibold mb-0 ms-4"]
    Wait Until Element Is Visible    //*[@class="form-label fw-bold text-dark fs-6 mb-0 w-25"]

Input TX ID
    Wait Until Element Is Visible    name:nomor
    [Arguments]     ${param}
    Input Text    name:nomor    ${param}

Input Nomor Dokumen
    Wait Until Element Is Visible    name:nomor
    [Arguments]     ${param}
    Input Text    name:nomor    ${param}

Click Btn Apply
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-lg btn-primary mb-5"]
    Click Button    //*[@class="btn btn-sm btn-lg btn-primary mb-5"]
    Sleep    1s

Search
    Wait Until Element Is Visible    //*[@placeholder="Kata Kunci"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Kata Kunci"]    ${param}

Click Btn Cari
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-primary text-center"]
    Click Element    //*[@class="btn btn-sm btn-primary text-center"]
    Sleep    1s
    
Click Btn Tambah
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-primary"]
    Click Button    default:Tambah
    Wait Until Element Is Visible    //*[@class="el-dialog is-align-center"]

Click Btn Edit
    Wait Until Element Is Visible    //*[@class="ki-solid ki-pencil fs-5"]
    Click Element    //*[@class="ki-solid ki-pencil fs-5"]
    Wait Until Page Contains    Edit Data

Input Kode
    Wait Until Element Is Visible    name=kode
    Clear Element Text    name:kode
    [Arguments]     ${param}
    Input Text    name=kode    ${param}

Input Nama
    Wait Until Element Is Visible    name=nama
    Clear Element Text    name:nama
    [Arguments]     ${param}
    Input Text    name=nama    ${param}

Select Versi
    Wait Until Element Is Visible    //*[@placeholder="Pick a day"]
    Click Element    //*[@placeholder="Pick a day"]
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Press Keys      None    TAB

Click Btn Submit
    Wait Until Element Is Visible    //*[@class="btn btn-primary btn-sm ms-5"]
    Click Button    //*[@class="btn btn-primary btn-sm ms-5"]
    Sleep    1s
    
Detail Layanan
    Wait Until Element Is Visible    //*[@class="ki-solid ki-devices fs-5"]
    Click Element    //*[@class="ki-solid ki-devices fs-5"]
    Wait Until Page Contains    Detail Data

Delete Layanan
    Wait Until Element Is Visible    //*[@class="ki-solid ki-trash fs-5"]
    Click Element    //*[@class="ki-solid ki-trash fs-5"]
    Press Keys      None    ENTER
