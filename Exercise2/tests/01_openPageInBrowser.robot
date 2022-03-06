*** Settings ***
Resource            ../pageObjects/basePage.robot

*** Variables ***

*** Test Cases ***

The First Selenium Test
    Open Browser  http://www.brightest.be  Google Chrome
    Sleep  5s
    Close browser

The Selenium Test With Keywords
    Open My Website
    Sleep  5s
    Close browser
