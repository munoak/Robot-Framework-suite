*** Settings ***

Library    SeleniumLibrary
*** Variables ***
${url}  https://www.amazon.com/
${browser}  chrome

*** Test Cases ***
Google
    open browser    ${url}    ${browser}
    sleep   2
    maximize browser window
    ${inputbox}     set variable    xpath://*[@id="twotabsearchtextbox"]
    element should be enabled    ${inputbox}
    element should be visible    ${inputbox}
    input text    ${inputbox}     socks
    click button    xpath://*[@id="nav-search-submit-button"]
    sleep   3
    close browser


*** Keywords ***

