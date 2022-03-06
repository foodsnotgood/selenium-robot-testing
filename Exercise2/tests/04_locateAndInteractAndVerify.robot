*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Selenium Test Locate And Interact And Verify
    Click Element  css:[title="Ja, ik accepteer cookies"]
    ${text}=  Get Text  xpath://a[@class='smartphones']
    Should Contain  ${text}  Beste


