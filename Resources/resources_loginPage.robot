*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObjects/locators_LoginPage.py
Resource    ../Utilities/utils.robot

*** Variables ***
${APP_URL}=     https://practicetestautomation.com/practice-test-login/
${BROWSER_NAME}=    Chrome
${TITLE}=   Test Login | Practice Test Automation

*** Keywords ***


UserLogin
    [Arguments]    ${username}      ${pswd}
    OpenApplication     ${APP_URL}      ${BROWSER_NAME}     ${TITLE}
    input text    ${email_text}     ${username}
    input text    ${pswd_text}      ${pswd}
    click element    ${login_btn}
    Page Should Contain    Logged In Successfully | Practice Test Automation	
    sleep    5s


