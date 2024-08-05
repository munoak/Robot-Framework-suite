*** Settings ***
Documentation  API Testing in Robot Framework
Library     Collections
Library     RequestsLibrary

*** Variables ***
${correct_parameters}   drilldowns=Nation&measures=Population&year=latest
${wrong_parameters}   xyz=abc&nanana=pppppppp

*** Test Cases ***
Getting data successfully and verifing response code and format
    [Documentation]  This test case verifies that the response code of the GET Request should be 200
    ...  and the data should have expected format.

    #Creating session and retrieving data from endpoint using correct parameters
    create session   mysession      https://datausa.io
    ${response}=  GET On Session  mysession     /api/data?${correct_parameters}

    #Validations
    #Validating either responce code is correct
    ${response_code}=   convert to string    ${response.status_code}
    should be equal    ${response_code}     200

    #Validating either data is in correct format
    ${content_format}=  get from dictionary    ${response.headers}      Content-Type
    should be equal    ${content_format}    application/json; charset=utf-8

Unsuccessful scenario with wrong parameters
    [Documentation]  This test case verifies the response code, it should be 200 as session has been created.
    ...  This test is also validating error code occured because of wrong parameters we provided above.
    ...  The body should contain error code rather than actual population data of USA.

    #Creating session and trying to retrieve data from endpoint using wrong parameters
    create session   mysession      https://datausa.io
    ${response}=  GET On Session  mysession     /api/data?${wrong_parameters}

    #Validations
    #Validating either responce code is correct
    ${response_code}=   convert to string    ${response.status_code}
    should be equal    ${response_code}     200

    #Validating expected error because of given wrong parameters
    ${response_body}=   convert to string    ${response.content}
    should be equal    ${response_body}      {"error":"Query must contain at least one measure."}