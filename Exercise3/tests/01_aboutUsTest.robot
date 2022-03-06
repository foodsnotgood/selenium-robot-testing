*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***
${ABOUTUS_ELEMENT}=    xpath://ul[@class='bulletSeparatedList']//a[normalize-space()='Over Tweakers']

*** Test Cases ***

Test About Us Page Contains Expected Text
    Go To Home
    Wait Until Element Is Visible  ${ABOUTUS_ELEMENT}
    Click Element  ${ABOUTUS_ELEMENT}
    Sleep  5s
    ${text}=  Get Text  css:.article.fullWidth
    Should Contain  ${text}  Zo helpen we je om te kiezen en het maximale uit je aankoop te halen.


