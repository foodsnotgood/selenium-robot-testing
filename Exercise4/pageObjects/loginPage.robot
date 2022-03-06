*** Settings ***
Resource  basePage.robot

*** Variables ***
${LOGIN}=  xpath://input[@name='login']
${ERROR_TEXT}=  Get Text  css:div[id='body'] li:nth-child(1)
${DISMISS}=  xpath

*** Keywords ***
Go to my account
    Click Element  ${MENU}
    Wait Until Element Is Visible  ${MY_ACCOUNT}
    Click Element  ${MY_ACCOUNT}
    Wait until Element Is Visible  &{DISMISS}
    Click Element  ${DISMISS}