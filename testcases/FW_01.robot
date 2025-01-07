*** Settings ***
Resource    ${CURDIR}/../import.robot
Suite Setup       Open Browser    ${fastwork_web_url['${ENV}']}    ${browser['${ENV}']}
Suite Teardown    Close Browser

*** Test Cases ***
Verify user select all checked box then user can click create account button
    [Tags]    FW_01    sign_up_feature
    home_feature.Click login button and Verify sign up and login page should display
    sign_up_feature.Click create account and Verify create account should display
    ${email}    sign_up_feature.Generate random value and Input all field    ${FW_01["domain_name"]}
    sign_up_feature.Selected all checkbox
    sign_up_feature.Click create account button and Verify confirm email page should display
    sign_up_page.Verify email in confirm email page display should matched with input email    ${email}