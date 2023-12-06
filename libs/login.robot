*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        http://10.31.31.107/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Open Browser Website
    Open Browser                ${LOGIN URL}       ${BROWSER}       options=add_argument("--incognito")
    Maximize Browser Window
    Wait Until Page Contains    Login
    Set Selenium Speed          ${SPEED}

Input Email
    [Arguments]    ${email}
    Clear Element Text    email 
    Input Text    email    ${email}
    Textfield Value Should Be    email    ${email}

Input Password
    [Arguments]     ${password}
    Clear Element Text    password
    Input Text    password    ${password}
    Textfield Value Should Be    password    ${password}

Click Btn Login
    Wait Until Element Is Visible    id:kt_sign_in_submit
    Click Button    id:kt_sign_in_submit
    Wait Until Element Is Visible    id:swal2-html-container
    ${text}=    Get Text    id:swal2-html-container
    Run Keyword If    '${text} == "You have successfully logged in!"'
    ...    Press Keys      None    ENTER
    ...    Wait Until Location Is    http://10.31.31.107/home
    ...  ELSE IF    '${text} == "Gagal Login"'
    ...     Wait Until Element Contains    id:swal2-html-container    Gagal Login
    ...  ELSE
    ...     Wait Until Element Contains    id:swal2-html-container    Gagal Login

Click Forgot Password
    Wait Until Element Is Visible    //*[@class="link-primary fs-6 fw-bold"]
    Click Element    //*[@class="link-primary fs-6 fw-bold"]
    Wait Until Page Contains    text
    
Logout
    Wait Until Element Is Visible    //*[@class="rounded-3"]
    Click Element    //*[@class="rounded-3"]
    Wait Until Element Is Visible    //*[@class="menu-link px-5"]
#    Click Element    //*[@class="menu-link px-5"][last()]
#    Click Element    default:Sign Out
    Click Element    xpath://*[@id="kt_header_user_menu_toggle"]/div[2]/div[7]/a
    Sleep    1s
    Press Keys      None    ENTER
    Sleep    1s
    Press Keys      None    ENTER
    Wait Until Location Is    ${LOGIN URL}