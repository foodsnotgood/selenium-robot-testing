*** Settings ***
Resource            ../pageObjects/contactPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Incomplete fill-out
    Go to register page
    Enter company information
    Go to contact page
    Enter email  tester@test.be
    Set Focus To Element  ${lastname}
    Enter text in element  ${firstname}  Johannes
    Set Focus To Element  ${password}
    Set Focus To Element  ${repeat_password}
    Click Element  ${title}
    Sleep  1s
    ${email_class}=  Get class  ${email}
    ${lastname_class}=  Get class  ${lastname}
    ${firstname_class}=  Get class  ${firstname}
    ${pwd_class}=  Get class  ${password}
    ${repeat_password_class}=  Get class  ${repeat_password}
    Should contain  ${email_class}  serious-success
    Should contain  ${lastname_class}  field-error
    Should contain  ${firstname_class}  field-success
    Should contain  ${pwd_class}  field-error
    Should contain  ${repeat_password_class}  field-error

