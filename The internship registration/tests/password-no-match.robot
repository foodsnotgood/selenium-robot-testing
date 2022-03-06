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
    Enter text in element  ${password}  Testtest1!
    Enter text in element  ${repeat_password}  Testtest2!
    Wait Until Element Is Visible  ${nextBtn}
    Click Element  ${nextBtn}
    ${email_class}=  Get class  ${email}
    ${lastname_class}=  Get class  ${lastname}
    ${firstname_class}=  Get class  ${firstname}
    ${pwdrepeat_error_msg}=  Get error message  ${repeat_password_error}
    ${repeat_password_class}=  Get class  ${repeat_password}
    Should contain  ${email_class}  serious-success
    Should contain  ${lastname_class}  field-success
    Should contain  ${firstname_class}  field-success
    Should contain  ${pwdrepeat_error_msg}  Wachtwoorden komen niet overeen
    Should contain  ${repeat_password_class}  serious-error

