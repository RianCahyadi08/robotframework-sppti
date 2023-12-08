*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        http://10.31.31.107/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Module Endpoint
    Go To    http://10.31.31.107/layanan/endpoint/
    Wait Until Location Is    http://10.31.31.107/layanan/endpoint/

Click Btn Filter
    Wait Until Element Is Visible    //*[@class="fs-4 fw-semibold mb-0 ms-4"]
    Click Element    //*[@class="fs-4 fw-semibold mb-0 ms-4"]
    Wait Until Element Is Visible    name:nama

Input Nama
    Wait Until Element Is Visible    name:nama
    [Arguments]     ${param}
    Input Text    name:nama    ${param}
    Textfield Value Should Be    name:nama    ${param}

Input Endpoint
    Wait Until Element Is Visible    name:endPoint
    [Arguments]     ${param}
    Input Text    name:endPoint    ${param}
    Textfield Value Should Be    name:endPoint    ${param}

Click Btn Apply
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-lg btn-primary mb-5"]
    Click Button    default:Apply
    Sleep    3s

Detail
    Wait Until Element Is Visible    //*[@class="ki-solid ki-eye fs-8"]
    Click Element    //*[@class="ki-solid ki-eye fs-8"]
    Wait Until Page Contains    Detail Data