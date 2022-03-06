*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Selenium Test Locate And Interact
    Click Element  css:[title="Ja, ik accepteer cookies"]
    Sleep  5s

Selenium Test Locate And Interact True
    Click Element  css:#true
    Sleep  5s

