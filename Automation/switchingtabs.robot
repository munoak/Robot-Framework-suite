*** Settings ***

Library    SeleniumLibrary
*** Variables ***
${url}  https://robotframework.org/
${alert_url}    https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
#Switchig tabs
    #open browser    ${url}    ${browser}
    #maximize browser window
    #set selenium speed    1 seconds
    #click link  xpath://*[@id="app"]/div[5]/div[4]/div[2]/div[1]/div/div[2]/div/div/div/a
    #input text    xpath://*[@id="slack-email"]     no**********22@gmail.com
    #click button    xpath://*[@id="join-form"]/input[2]

Alert Window
    open browser    ${alert_url}    ${browser}
    maximize browser window
    set selenium speed    1 seconds
    click button    xpath://*[@id="HTML9"]/div[1]/button
    handle alert    accept

    go to   https://case.edu.pk
    #execute javascript    window.scrollTo(0,1500)      #scroll to some specific pixel
    #scroll element into view    xpath://*[@id="blog"]/div/div[2]/div[1]/div/div[1]/a/div       #scroll to some element on website
    execute javascript    window.scrollTo(0,document.body.scrollHeight)      #scroll to the end of page
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)      #scroll to the upside of page
    capture element screenshot    xpath://*[@id="featured"]/div/div[1]/div/div/div[1]/a/img     uni.png
    capture page screenshot    website.png
    go back
    close browser

*** Keywords ***

