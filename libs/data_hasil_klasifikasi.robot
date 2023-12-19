*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Move To Module Data Hasil Klasifikasi
    Go To    http://10.31.31.107/klasifikasi/data-hasil-klasifikasi
    Wait Until Location Is    http://10.31.31.107/klasifikasi/data-hasil-klasifikasi
    Sleep    10s
    
Input Kata Kunci
    Wait Until Element Is Visible    //*[@class="form-control form-control p-2"]
    [Arguments]     ${param}
    Input Text    //*[@class="form-control form-control p-2"]    ${param}
    Textfield Value Should Be    //*[@class="form-control form-control p-2"]    ${param}
    
Click Btn Cari
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-primary text-center"]
    Click Button    //*[@class="btn btn-sm btn-primary text-center"]

Detail
    Wait Until Element Is Visible    //*[@class="ki-solid ki-eye fs-5"]
    Click Element    //*[@class="ki-solid ki-eye fs-5"]
    Wait Until Element Is Visible    //*[@class="p-0 m-0"]