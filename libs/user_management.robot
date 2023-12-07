*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        http://10.31.31.107/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Module User Management
    Go To    http://10.31.31.107/user-management
    Wait Until Location Is    http://10.31.31.107/user-management

Select Filter
    Wait Until Element Is Visible    name:selectedFilter
    Click Element    name:selectedFilter
    Sleep    1s
    Press Keys      None    ${param}
    Press Keys      None    ENTER

Search
    Wait Until Element Is Visible    //*[@placeholder="Please input"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Please input"]    ${param}
    Textfield Value Should Be    //*[@placeholder="Please input"]    ${param}
    
Click Btn Cari
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-primary text-center"]
    Click Button    //*[@class="btn btn-sm btn-primary text-center"]
    Sleep    3s
    
Detail
    Wait Until Element Is Visible    //*[@class="ki-solid ki-devices fs-5"]
    Click Element    //*[@class="ki-solid ki-devices fs-5"]
    Wait Until Page Contains    Detail Data

Click Btn Tambah User
    Wait Until Element Is Visible    //*[@class="ki-solid ki-plus fs-3"]
    Click Element    //*[@class="ki-solid ki-plus fs-3"]
    Wait Until Page Contains    Tambah Data

Input Nama Lengkap
    Wait Until Element Is Visible    name:username
    Clear Element Text    name:username
    [Arguments]     ${param}
    Input Text    name:username    ${param}
    Textfield Value Should Be    name:username    ${param}

Input Email
    Wait Until Element Is Visible    name:email
    Clear Element Text    name:email
    [Arguments]     ${param}
    Input Text    name:email    ${param}
    Textfield Value Should Be    name:email    ${param}

Input No Telephone
    Wait Until Element Is Visible    name:phone
    Clear Element Text    name:phone
    [Arguments]     ${param}
    Input Text    name:phone    ${param}
    Textfield Value Should Be    name:phone    ${param}

Input Kata Sandi
    Wait Until Element Is Visible    name:password
    Clear Element Text    name:password
    [Arguments]     ${param}
    Input Text    name:password    ${param}
    Textfield Value Should Be    name:password    ${param}

Input Konfirmasi Kata Sandi
    Wait Until Element Is Visible    name:passwordconf
    Clear Element Text    name:passwordconf
    [Arguments]     ${param}
    Input Text    name:passwordconf    ${param}
    Textfield Value Should Be    name:passwordconf    ${param}

Select Jenis Role
    Wait Until Element Is Visible    //*[@class="el-select__input is-large"]
    Click Element    //*[@class="el-select__input is-large"]
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Nama Instansi
    Wait Until Element Is Visible    name:id_ref_jenis_aph
    Click Element    name:id_ref_jenis_aph
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Click Status
    Wait Until Element Is Visible    name:billing
    Click Element    name:billing

Click Btn Submit
    Wait Until Element Is Visible    //*[@class="btn btn-primary btn-sm ms-5"]
    Click Button    //*[@class="btn btn-primary btn-sm ms-5"]
    Sleep    2s
    
Click Icon Edit
    Wait Until Element Is Visible    //*[@class="ki-solid ki-pencil fs-5"]
    Click Element    //*[@class="ki-solid ki-pencil fs-5"]
    Wait Until Page Contains    Edit Data

Delete
    Wait Until Element Is Visible    //*[@class="ki-solid ki-trash fs-5"]
    Click Element    //*[@class="ki-solid ki-trash fs-5"]
    Sleep    1s
    Press Keys      None    ENTER
    Sleep    2s