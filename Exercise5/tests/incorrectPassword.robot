*** Settings ***
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Incorrect Password
    Input Text  ${input_username}  tomsmith
    Input Text  ${input_password}  incorrectPassword
    Click Button  ${login_button}
    ${message}=  Get error message
    Should Contain  ${message}  Your password is invalid
