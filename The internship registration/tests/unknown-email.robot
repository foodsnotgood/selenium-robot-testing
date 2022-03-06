*** Settings ***
Resource            ../pageObjects/contactPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

No email address
    Go to register page
    Enter company information
    Go to contact page
    Enter email  tester@test.be
    Sleep  1s
    ${class}=  Get class  ${email}
    Should contain  ${class}  serious-success