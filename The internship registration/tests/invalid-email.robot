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
    Enter email  testemailadres.be
    ${message}=  Get error message  ${email_error}
    ${class}=  Get class  ${email}
    Should contain  ${class}  serious-error
    Should Contain  ${message}  Voer een geldig email adres in
