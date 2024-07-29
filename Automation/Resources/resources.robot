*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/DDT.robot
*** Variables ***
${url}      https://admin-demo.nopcommerce.com/
${browser}      chrome

*** Keywords ***
opening browser
    open browser    ${url}      ${browser}
    maximize browser window

closeing browser
    close all browsers

login to page
    go to    ${url}

Entering username
    [Arguments]     ${txt_username}
    input text      id:Email      ${txt_username}

Entering password
    [Arguments]    ${txt_password}
    input text    id:Password      ${txt_password}

pressing login button
    click element    xpath:/html/body/div[6]/div/div/div/div/div[2]/div[1]/div/form/div[3]/button

logging out
    click link    Logout

error message
    page should contain    Login wa unsuccessful.

validating complete loading
    page should contain    Dashboard