*** Settings ***
Library    ../Library/api_library.py

*** Variables ***
${APIEndpoint}      https://datausa.io/api/data?drilldowns=Nation&measures=Population&year=latest

*** Test Cases ***
Example Test Case
    Create Session
    ${response}=    Get On Session      ${APIEndpoint}}
    Validate Response Code    ${response}    200
    Validate Response Format    ${response}    "application/json; charset=utf-8"
