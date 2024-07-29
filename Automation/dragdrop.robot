*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}      chrome
*** Test Cases ***
dragndrop

    open browser    ${url}      ${browser}
    maximize browser window
    get element count    xpath:/html[1]/body[1]/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr


*** Keywords ***
