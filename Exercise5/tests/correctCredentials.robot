*** Settings ***
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close Browser

*** Test Cases ***
Correct Username and Password
    Input Text  ${input_username}  tomsmith
    Input Text  ${input_password}  SuperSecretPassword!
    Click Button  ${login_button}
    ${message}=  Get error message
    Should Contain  ${message}  You logged into a secure area
