*** Settings ***
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close Browser

*** Test Cases ***
Incorrect Username and Passwords
        Input Text  ${input_username}  tom
        Input Text  ${input_password}  incorrectPassword
        Click Button  ${login_button}
        ${message}=  Get error message
        Should Contain  ${message}  Your username is invalid
