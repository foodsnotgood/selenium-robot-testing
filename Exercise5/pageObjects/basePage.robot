*** Settings ***
Resource  ../helpers/browser.robot

*** Variables ***
${input_username}=  xpath://input[@id='username']
${input_password}=  xpath://input[@id='password']
${login_button}=  css:button[type="submit"]
${error_message}=  xpath://div[@id='flash']
${error_message_text}=  Get Text  ${error_message}

*** Keywords ***
Open My Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}
    Wait Until Element Is Visible  ${input_username}

Get error message
    Wait Until Element Is Visible  ${error_message}
    ${message}=  Get Text  ${error_message}
    [Return]  ${message}
