*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        http://10.31.31.107/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Management Menu
    Go To    http://10.31.31.107/admin/manajemen-menu/
    Wait Until Location Is    http://10.31.31.107/admin/manajemen-menu/
    Sleep    3s

Click Btn Tambah Menu
    Wait Until Element Is Visible    //*[@class="ki-solid ki-plus fs-3"]
    Click Element    //*[@class="ki-solid ki-plus fs-3"]
    Wait Until Page Contains    Add Data

Input Nama Menu
    Wait Until Element Is Visible    name:name
    Clear Element Text    name:name
    [Arguments]     ${param}
    Input Text    name:name    ${param}

Select Module
    Wait Until Element Is Visible    name:id_ref_module
    Click Element    name:id_ref_module
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    1s
    Press Keys      None    ENTER

Checklist Induk Menu
    Wait Until Element Is Visible    class:el-radio__inner
    Click Element    class:el-radio__inner

Select Induk Menu
    Wait Until Element Is Visible    name:id_parent
    Click Element    name:id_parent
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    1s
    Press Keys      None    ENTER

Input Url
    Wait Until Element Is Visible    name:url_menu
    Clear Element Text    name:url_menu
    [Arguments]     ${param}
    Input Text    name:url_menu    ${param}

Select Icon
    Wait Until Element Is Visible    //*[@placeholder="Pilih Ikon"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Pilih Ikon"]    ${param}

Click Btn Submit
    Wait Until Element Is Visible    class:indicator-label
    Click Button    default:Submit
    
Detail Management Menu
    Wait Until Element Is Visible    //*[@class="btn btn-active-primary hover-scale btn-sm"]
    Click Element    //*[@class="btn btn-active-primary hover-scale btn-sm"]
    Wait Until Element Is Visible    id:kt_accordion_1
    
Click Icon Edit
    Wait Until Element Is Visible    //*[@class="ki-solid ki-pencil fs-5"]
    Click Element    //*[@class="ki-solid ki-pencil fs-5"]
    Wait Until Page Contains    Edit Data

Delete Manajemen Menu
    Wait Until Element Is Visible    //*[@class="ki-solid ki-trash fs-5"]
    Click Element    //*[@class="ki-solid ki-trash fs-5"]
    Sleep    0.5s
    Press Keys      None    ENTER