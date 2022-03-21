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

No email address
    Clear input fields
    Enter email  testemailadres.be
    ${message}=  Get error message  ${email_error}
    ${class}=  Get class  ${email}
    Should contain  ${class}  serious-error
    Should Contain  ${message}  Voer een geldig email adres in

Invalid password
    Clear input fields
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

Already known email address
    Clear input fields
    Enter email  student@thomasmore.be
    Sleep  1s
    ${message}=  Get error message  ${email_error}
    ${class}=  Get class  ${email}
    Should contain  ${class}  serious-error
    Should Contain  ${message}  Dit email adres is reeds in gebruik

No email address
    Clear input fields
    Enter no email
    ${message}=  Get error message  ${email_error}
    Should Contain  ${message}  Voer een geldig email adres in

Password no match
    Clear input fields
    Enter email  tester@test.be
    Enter text in element  ${lastname}  Roeder
    Enter text in element  ${firstname}  Johannes
    Enter text in element  ${password}  Testtest1!
    Enter text in element  ${repeat_password}  Testtest2!
    Wait Until Element Is Visible  ${nextBtn}
    Click Element  ${nextBtn}
    Sleep  1s
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

Unknown email address
    Clear input fields
    Enter email  tester@test.be
    Sleep  1s
    ${class}=  Get class  ${email}
    Should contain  ${class}  serious-success