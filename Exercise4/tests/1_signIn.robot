*** Settings ***
Resource  ../pageObjects/loginPage.robot

Suite Setup  Go to website
#Suite Teardown  Close Browser

*** Test Cases ***
Log in without email address
    Go to my account