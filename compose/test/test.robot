*** Settings ***
Library    RequestsLibrary
Suite Setup    Connect to server

*** Test cases ***
Hello returns Hi Man
    ${response}=    Get Request    hellosession    /hello
    Should Be Equal As Strings    ${response.status_code}    200

*** Keywords ***
Connect to server
    Create Session    hellosession    http://web:5000
