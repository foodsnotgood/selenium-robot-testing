*** Settings ***
Resource  basePage.robot

*** Variables ***
${ACCEPT_COOKIES}=    css:[title="Ja, ik accepteer cookies"]
${ABOUTUS_TXT}=       xpath://a[@class='smartphones']

*** Keywords ***

Go To Home
    Click Element  ${ACCEPT_COOKIES}

Get Smartphones text
    Wait Until Element Is Visible  ${ABOUTUS_TXT}
    ${text}=  Get Text  ${ABOUTUS_TXT}
    [Return]  ${text}
