*** Settings ***
Library           SeleniumLibrary
*** Keywords ***
Move To Module Klasifikasi
    Go To    http://10.31.31.107/klasifikasi/master/klasifikasi/
    Wait Until Location Is    http://10.31.31.107/klasifikasi/master/klasifikasi/
    Sleep    3s

Click Btn Filter
    Wait Until Element Is Visible    //*[@class="fs-4 fw-semibold mb-0 ms-4"]
    Click Element    //*[@class="fs-4 fw-semibold mb-0 ms-4"]
    Sleep    1s

Select Kolom
    Wait Until Element Is Visible    //*[@placeholder="Filter Kolom"]
    Click Element    //*[@placeholder="Filter Kolom"]
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER

Input Kata Kunci Pasal
    Wait Until Element Is Visible    //*[@placeholder="Kata Kunci Pasal"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Kata Kunci Pasal"]    ${param}

Click Btn Submit
    Wait Until Element Is Visible    //*[@class="el-button el-button--primary ms-3"]
    Click Button    //*[@class="el-button el-button--primary ms-3"]
    Sleep    3s

Detail
    Wait Until Element Is Visible    //*[@class="ki-solid ki-eye fs-8"]
    Click Element    //*[@class="ki-solid ki-eye fs-8"]
    Wait Until Element Is Visible    //*[@class="p-0 m-0"]

Delete
    Wait Until Element Is Visible    //*[@class="ki-solid ki-trash fs-8"]
    Click Element    //*[@class="ki-solid ki-trash fs-8"]
    Wait Until Element Is Visible    //*[@class="swal2-popup swal2-modal swal2-icon-warning swal2-show"]
    Click Element    //*[@class="swal2-confirm swal2-styled swal2-default-outline"]

Click Btn Tambah Data
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-primary"]
    Click Element    //*[@class="btn btn-sm btn-primary"]
    Wait Until Location Is    http://10.31.31.107/klasifikasi/master/klasifikasi/add

Input Buku
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[1]/div/div/div/input
    Clear Element Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[1]/div/div/div/input
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[1]/div/div/div/input    ${param}

Input Bab
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[2]/div/div/div/input
    Clear Element Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[2]/div/div/div/input
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[2]/div/div/div/input    ${param}

Input Pasal
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/div/input
    Clear Element Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/div/input
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/div/input    ${param}

Input Ayat
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[6]/div/div/div/input
    Clear Element Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[6]/div/div/div/input
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[6]/div/div/div/input    ${param}

Input Angka/Huruf/Butir
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[9]/div/div/div/input
    Clear Element Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[9]/div/div/div/input
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[9]/div/div/div/input    ${param}

Input UU No
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[12]/div/div/div/input
    Clear Element Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[12]/div/div/div/input
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[12]/div/div/div/input    ${param}

Input UU Tahun
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[15]/div/div/div/input
    Clear Element Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[15]/div/div/div/input
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[15]/div/div/div/input    ${param}

Input Penulisan Buku
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[18]/div/div/div/input
    Clear Element Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[18]/div/div/div/input
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[18]/div/div/div/input    ${param}

Input Klasifikasi
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[19]/div/div/div/input
    Clear Element Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[19]/div/div/div/input
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[19]/div/div/div/input    ${param}

Input Kualifikasi
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[20]/div/div/div/input
    Clear Element Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[20]/div/div/div/input
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[20]/div/div/div/input    ${param}
    
Select Status
    Wait Until Element Is Visible    //*[@placeholder="Status"]
    Click Element    //*[@placeholder="Status"]
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER
    
Click Edit
    Wait Until Element Is Visible    //*[@class="ki-solid ki-pencil fs-8"]
    Click Element    //*[@class="ki-solid ki-pencil fs-8"]
    Wait Until Element Is Visible    //*[@class="p-0 m-0"]