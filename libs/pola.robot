*** Settings ***
Library           SeleniumLibrary
*** Keywords ***
Move To Module Pola
    Go To    http://10.31.31.107/klasifikasi/master/pola/
    Wait Until Location Is    http://10.31.31.107/klasifikasi/master/pola/
    Sleep    3s

Click Btn Filter Kolom
    Wait Until Element Is Visible    //*[@placeholder="Filter Kolom"]
    Click Element    //*[@placeholder="Filter Kolom"]
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER

Input Kata Kunci
    Wait Until Element Is Visible    //*[@placeholder="Kata Kunci"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Kata Kunci"]    ${param}

Click Btn Cari
    Wait Until Element Is Visible    //*[@class="el-button el-button--primary"]
    Click Button    //*[@class="el-button el-button--primary"]
    Sleep    3s

Click Btn Reset
    Wait Until Element Is Visible    //*[@class="el-button el-button--danger"]
    Click Button    //*[@class="el-button el-button--danger"]
    Sleep    3s
    
Click Btn Tambah Data
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-primary"]
    Click Button    //*[@class="btn btn-sm btn-primary"]
    Wait Until Element Is Visible    //*[@class="el-dialog__title"]

Input Nama Pola
    Wait Until Element Is Visible    //*[@placeholder="Nama Pola"]
    [Arguments]     ${param}
    Clear Element Text    //*[@placeholder="Nama Pola"]
    Input Text    //*[@placeholder="Nama Pola"]    ${param}
    Textfield Value Should Be    //*[@placeholder="Nama Pola"]    ${param}

Input Pola
    Wait Until Element Is Visible    //*[@placeholder="Please input"]
    [Arguments]     ${param}
    Clear Element Text    //*[@placeholder="Please input"]
    Input Text    //*[@placeholder="Please input"]    ${param}

Click Btn Confirm
    Wait Until Element Is Visible    //*[@class="el-button el-button--primary"]
    Press Keys      None    TAB
    Sleep    0.5s
    Press Keys      None    TAB
    Sleep    0.5s
    Press Keys      None    TAB
    Sleep    0.5s
    Press Keys      None    ENTER
    
Click Detail
    Wait Until Element Is Visible    //*[@class="ki-solid ki-eye fs-8"]
    Click Element    //*[@class="ki-solid ki-eye fs-8"]

Click Edit
    Wait Until Element Is Visible    //*[@class="ki-solid ki-pencil fs-8"]
    Click Element    //*[@class="ki-solid ki-pencil fs-8"]

Delete
    Wait Until Element Is Visible    //*[@class="btn btn-icon btn-danger btn-sm"]
    Click Element    //*[@class="btn btn-icon btn-danger btn-sm"]
    Wait Until Element Is Visible    //*[@class="swal2-popup swal2-modal swal2-icon-warning swal2-show"]
    Click Element    //*[@class="swal2-confirm swal2-styled swal2-default-outline"]
