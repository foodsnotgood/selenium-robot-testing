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
    Enter text in element  ${lastname}  Roeder
    Enter text in element  ${firstname}  Johannes
    Enter text in element  ${password}  Test
    Enter text in element  ${repeat_password}  Test
    Click Element  ${title}
    Sleep  1s
    ${email_class}=  Get class  ${email}
    ${lastname_class}=  Get class  ${lastname}
    ${firstname_class}=  Get class  ${firstname}
    ${pwd_error_msg}=  Get error message  ${password_error}
    ${repeat_password_class}=  Get class  ${repeat_password}
    Should contain  ${email_class}  serious-success
    Should contain  ${lastname_class}  field-success
    Should contain  ${firstname_class}  field-success
    Should contain  ${pwd_error_msg}  Wachtwoord moet minstens een letter, een cijfer, een speciaal teken bevatten en 8 tekens lang zijn
    Should contain  ${repeat_password_class}  field-success

