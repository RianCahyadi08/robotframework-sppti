*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        http://10.31.31.107/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Management Role Module
    Go To    http://10.31.31.107/admin/manajemen-role/
    Wait Until Location Is    http://10.31.31.107/admin/manajemen-role/

Search
    Wait Until Element Is Visible    //*[@class="form-control form-control p-2"]
    [Arguments]     ${param}
    Input Text    //*[@class="form-control form-control p-2"]    ${param}
    Textfield Value Should Be    //*[@class="form-control form-control p-2"]    ${param}

Detail
    Wait Until Element Is Visible    //*[@class="ki-solid ki-devices fs-5"]
    Click Element    //*[@class="ki-solid ki-devices fs-5"]
    Sleep    3s
    Wait Until Page Contains    Detail Data

Click Icon Edit
    Wait Until Element Is Visible    xpath://*[@id="kt_app_content_container"]/div/div[2]/div/div/div[1]/table/tbody/tr[3]/td[3]/div/a[2]/button
    Click Element    xpath://*[@id="kt_app_content_container"]/div/div[2]/div/div/div[1]/table/tbody/tr[3]/td[3]/div/a[2]/button
    Sleep    3s

Click Btn Cari
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-primary text-center"]
    Click Element    //*[@class="btn btn-sm btn-primary text-center"]
    Sleep    3s
    
Click Btn Tambah Data
    Wait Until Element Is Visible    //*[@class="ki-solid ki-plus fs-3"]
    Click Element    //*[@class="ki-solid ki-plus fs-3"]
    Wait Until Location Is    http://10.31.31.107/admin/manajemen-role/add/

Input Nama Peran
    Wait Until Element Is Visible    name:nama_peran
    Clear Element Text    name:nama_peran
    [Arguments]     ${param}
    Input Text    name:nama_peran    ${param}
    Textfield Value Should Be    name:nama_peran    ${param}
    
Click Tab Selected
    Wait Until Element Is Visible    id:tab-namaModuleRian
    Click Element    id:tab-namaModuleRian
    Wait Until Element Is Visible    //*[@class="el-tabs__item is-top is-active"]

Click Btn Submit
    Wait Until Element Is Visible    id:kt_modal_new_address_submit
    Click Button    id:kt_modal_new_address_submit
    Sleep    2s

Delete
    Wait Until Element Is Visible    xpath://*[@id="kt_app_content_container"]/div/div[2]/div/div/div[1]/table/tbody/tr[3]/td[3]/div/a[3]/i
    Click Element    xpath://*[@id="kt_app_content_container"]/div/div[2]/div/div/div[1]/table/tbody/tr[3]/td[3]/div/a[3]/i
    Sleep    1s
    Press Keys      None    ENTER
    Sleep    2s