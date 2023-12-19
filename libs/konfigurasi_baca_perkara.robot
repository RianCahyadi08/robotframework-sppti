*** Settings ***
Library           SeleniumLibrary
*** Keywords ***
Move To Module Konfigurasi Baca Perkara
    Go To    http://10.31.31.107/klasifikasi/master/konfigurasi-baca-perkara/
    Wait Until Location Is    http://10.31.31.107/klasifikasi/master/konfigurasi-baca-perkara/
    Sleep    3s

Input Kata Kunci
    Wait Until Element Is Visible    //*[@placeholder="Kata Kunci"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Kata Kunci"]    ${param}
    Textfield Value Should Be    //*[@placeholder="Kata Kunci"]    ${param}
    
Click Btn Cari
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-primary text-center"]
    Click Element    //*[@class="btn btn-sm btn-primary text-center"]
 
Detail
    Wait Until Element Is Visible    //*[@class="ki-solid ki-eye fs-5"]
    Click Element    //*[@class="ki-solid ki-eye fs-5"]
    Wait Until Element Is Visible    //*[@class="p-0 m-0"]

Click Btn Tambah Data
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-primary"]
    Click Button    default:Tambah Data
    Wait Until Location Is    http://10.31.31.107/klasifikasi/master/konfigurasi-baca-perkara/add

Input Kode Jenis Dokumen
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[1]/div/div/div/input
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[1]/div/div/div/input    ${param}
    Textfield Value Should Be    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[1]/div/div/div/input    ${param}

Input Keterangan
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[2]/div/div/textarea
    [Arguments]     ${param}
    Input Text    xpath:/html/body/div[1]/div[1]/div/div[2]/div[2]/div[1]/div/div/div/div/div[2]/form/div[2]/div/div/textarea    ${param}

Input Akses Elemen Nomor
    Press Keys      None    TAB
    [Arguments]     ${param}
    Press Keys      None    ${param}

Input Akses Elemen Nama
    Press Keys      None    TAB
    [Arguments]     ${param}
    Press Keys      None    ${param}

Input Akses Elemen UU Pasal
    Press Keys      None    TAB
    [Arguments]     ${param}
    Press Keys      None    ${param}
    
Select Status
    Wait Until Element Is Visible    //*[@placeholder="Status"]
    Click Element    //*[@placeholder="Status"]
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER

Click Btn Submit
    Wait Until Element Is Visible    //*[@class="el-button el-button--primary ms-3"]
    Click Button    //*[@class="el-button el-button--primary ms-3"]
    
Edit
    Wait Until Element Is Visible    //*[@class="ki-solid ki-pencil fs-5"]
    Click Element    //*[@class="ki-solid ki-pencil fs-5"]
    Wait Until Element Is Visible    //*[@class="p-0 m-0"]
    
Delete
    Wait Until Element Is Visible    //*[@class="ki-solid ki-trash fs-5"]
    Click Element    //*[@class="ki-solid ki-trash fs-5"]
    Wait Until Element Is Visible    //*[@class="swal2-confirm swal2-styled swal2-default-outline"]
    Click Element    //*[@class="swal2-confirm swal2-styled swal2-default-outline"]