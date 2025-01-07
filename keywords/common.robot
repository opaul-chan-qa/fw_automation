*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Keywords ***
Generate random email
    [Arguments]    ${domain_name}
    ${random_string}=    Generate random string    4    [LETTERS]
    ${random_number}=    Generate random string    4    [NUMBERS]
    ${random_email}=    Set Variable    ${random_string}${random_number}@${domain_name}
    RETURN    ${random_email}

Generate random password
    ${random_string}=    Generate random string    4    [LETTERS]
    ${random_number}=    Generate random string    4    [NUMBERS]
    ${random_password}=    Set Variable    ${random_string}${random_number}
    RETURN    ${random_password}

Generate random mobile number
    ${random_number}=    Generate random string    9    [NUMBERS]
    ${mobile_number}=    Set Variable    0${random_number}
    RETURN    ${mobile_number}