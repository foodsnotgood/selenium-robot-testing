*** Settings ***
Resource  basePage.robot

*** Variables ***
${companyName}=  xpath://input[@id='companyName']
${street}=  xpath://input[@id='company-street']
${nr}=  xpath://input[@id='street-nr']
${postalCode}=  xpath://input[@id='postalCode']
${city}=  xpath://input[@id='city']
${nextBtn}=  xpath://button[@id='nextBtn']

*** Keywords ***
Go to register page
    Wait Until Element Is Visible  ${register_button}
    Click Element  ${register_button}

Enter company information
    Wait until Element Is Visible  ${companyName}
    Input Text  ${companyName}  Testers Test
    Input Text  ${street}  Lange Nieuwstraat
    Input Text  ${nr}  50
    Input Text  ${postalCode}  2000
    Input Text  ${city}  Antwerpen