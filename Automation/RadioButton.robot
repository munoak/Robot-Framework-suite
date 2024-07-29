*** Settings ***

Library    SeleniumLibrary
*** Variables ***
${url}  http://admissions.case.edu.pk/OnlineAdmission/SignUp.aspx
${browser}  chrome
#${degreename}    BSSE : Bachelor of Science in Software Engineering

*** Test Cases ***
checking radio button and check boxes
    open browser    ${url}    ${browser}
    maximize browser window
    #set selenium timeout    5 seconds
    set selenium implicit wait  5 seconds
    wait until page contains    Create Account
    #[argument]     names   dropdown_option
    select from list by index   ctl00$ContentPlaceHolder1$ddlDegree   9
    set selenium speed    1 seconds
    input text    ctl00$ContentPlaceHolder1$txtFullName    John xyz
    input text    xpath://*[@id="ctl00_ContentPlaceHolder1_txtEmail"]   no*********22@gmail.com
    input text    xpath://*[@id="ctl00_ContentPlaceHolder1_txtMobileNo"]    +358*******02
    input text    xpath://*[@id="ctl00_ContentPlaceHolder1_txtpassword"]    **********
    input text    xpath://*[@id="ctl00_ContentPlaceHolder1_txtpasswordConfirm"]    **********
    #click button    xpath://*[@id="right"]/div[3]/a
    # selecting radio button

    #select radio button    sex  Female
    #select radio button    exp  3
    close browser

    ${speed}    get selenium speed
    log to console  ${speed}


*** Keywords ***

