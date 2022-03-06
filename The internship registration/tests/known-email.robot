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
    Enter email  student@thomasmore.be
    Sleep  1s
    ${message}=  Get error message  ${email_error}
    ${class}=  Get class  ${email}
    Should contain  ${class}  serious-error
    Should Contain  ${message}  Dit email adres is reeds in gebruik
