*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        http://10.31.31.107/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Management Module
    Go To    http://10.31.31.107/admin/manajemen-modul/
    Wait Until Location Is    http://10.31.31.107/admin/manajemen-modul/

Search
    Wait Until Element Is Visible    //*[@placeholder="Kata Kunci"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Kata Kunci"]    ${param}
    Textfield Value Should Be    //*[@placeholder="Kata Kunci"]    ${param}
    Click Element    //*[@class="btn btn-sm btn-primary text-center"]
    
Click Btn Tambah Data
    Wait Until Element Is Visible    //*[@class="ki-solid ki-plus fs-3"]
    Click Element    //*[@class="ki-solid ki-plus fs-3"]
    Wait Until Page Contains    Tambah Data

Input Nama Module
#    Wait Until Element Is Visible    //*[@class="el-form-item__label"]
#    Clear Element Text    //*[@class="el-form-item__label"]
#    Click Element    //*[@class="el-form-item__label"]
#    [Arguments]     ${param}
#    Press Keys      None    ${param}
    Wait Until Element Is Visible    class:el-input__inner
    [Arguments]     ${param}
    Input Text    class:el-input__inner    ${param}

Input Urutan Module
    Wait Until Element Is Visible    //*[@type="number"]
    Clear Element Text    //*[@type="number"]
    [Arguments]     ${param}
    Input Text    //*[@type="number"]    ${param}
    Textfield Value Should Be    //*[@type="number"]    ${param}
    
Click Btn Confirm
    Wait Until Element Is Visible    //*[@class="el-button el-button--primary"]
    Click Button    //*[@class="el-button el-button--primary"]
    
Detail
    Wait Until Element Is Visible    //*[@class="ki-solid ki-devices fs-5"]
    Click Element    //*[@class="ki-solid ki-devices fs-5"]
    Wait Until Page Contains    Detail Data

Click Icon Edit
    Wait Until Element Is Visible    xpath://*[@id="kt_app_content_container"]/div[1]/div[2]/div/div/div[1]/table/tbody/tr[2]/td[4]/div/a[2]/i
    Click Element    xpath://*[@id="kt_app_content_container"]/div[1]/div[2]/div/div/div[1]/table/tbody/tr[2]/td[4]/div/a[2]/i
    Wait Until Page Contains    Edit Data

Delete
    Wait Until Element Is Visible    xpath://*[@id="kt_app_content_container"]/div[1]/div[2]/div/div/div[1]/table/tbody/tr[4]/td[4]/div/a[3]
    Click Element    xpath://*[@id="kt_app_content_container"]/div[1]/div[2]/div/div/div[1]/table/tbody/tr[4]/td[4]/div/a[3]
    Press Keys      None    ENTER
    Sleep    1s