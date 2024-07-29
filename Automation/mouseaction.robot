*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome
*** Test Cases ***
MouseAction

    ${pagetitle}    launchingbrowser    ${url}      ${browser}
    log to console      ${pagetitle}
    #open context menu    xpath://*[@id="HTML9"]/div[1]/button      #open the menu of right click
    #double click element    xpath://*[@id="HTML10"]/div[1]/button
    drag and drop    xpath://*[@id="gallery"]/li[2]/img     xpath://*[@id="trash"]
    sleep    2
    close browser

*** Keywords ***
launchingbrowser
    [Arguments]    ${weburl}    ${webbrowser}
    open browser    ${weburl}      ${webbrowser}
    maximize browser window
    ${title}    get title
    [Return]    ${title}
