*** Settings ***
Resource  ../helpers/browser.robot

*** Variables ***
${register_button}=  css:a[href='register']

*** Keywords ***
Open My Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}