*** Settings ***
Resource  ../helpers/browser.robot

*** Variables ***
${MENU}=  xpath://a[@id='menu-icon']
${MY_ACCOUNT}=  xpath://a[normalize-space()='My Account']

*** Keywords ***
Go to website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}
