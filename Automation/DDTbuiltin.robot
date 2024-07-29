*** Settings ***
Library    SeleniumLibrary
Resource    ../Automation/Resources/resources.robot
Suite Setup    resources.opening browser
Suite Teardown  resources.closeing browser
Test Template    Invalid login

*** Test Cases ***
right user wrong pwd    admin@     admin
wrong user right pwd    ad@

*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    input text      id:Email      ${username}
    input text    id:Password      ${password}
    #Entering username       ${txt_username}     ${username}
    #Entering password       ${txt_password}     ${password}
    pressing login button
    error message