*** Settings ***
Resource  registrationPage.robot

*** Variables ***
${email}=  xpath://input[@id='email']
${lastname}=  xpath://input[@id='lastname']
${firstname}=  xpath://input[@id='firstname']
${email_error}=  xpath://input[@id='email']/following-sibling::small[1]
${title}=  xpath://h1[normalize-space()='Registratie voor bedrijven']
${password}=  xpath://input[@id='password']
${password_error}=  xpath://input[@id='password']/following-sibling::small[1]
${repeat_password}=  xpath://input[@id='matchingPassword']
${repeat_password_error}=  xpath://input[@id='matchingPassword']/following-sibling::small[1]

*** Keywords ***
Go to contact page
    Wait Until Element Is Visible  ${nextBtn}
    Click Element  ${nextBtn}

Enter no email
    Wait Until Element Is Visible  ${email}
    Click Element  ${email}
    Click Element  ${lastname}

Enter email
    [Arguments]  ${input}
    Wait Until Element Is Visible  ${email}
    Input Text  ${email}  ${input}
    Click Element  ${lastname}

Enter text in element
    [Arguments]  ${element}  ${input}
    Wait Until Element Is Visible  ${element}
    Input Text  ${element}  ${input}

Get class
    [Arguments]  ${element}
    ${class}=  Get Element Attribute  ${element}  class
    [Return]  ${class}

Get error message
    [Arguments]  ${error_field}
    Wait until Element Is Visible  ${error_field}
    ${message}=  Get Text  ${error_field}
    [Return]  ${message}

Clear input fields
    Clear Element Text  ${email}
    Clear Element Text  ${lastname}
    Clear Element Text  ${firstname}
    Clear Element Text  ${password}
    Clear Element Text  ${repeat_password}