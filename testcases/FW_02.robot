*** Settings ***
Resource    ${CURDIR}/../import.robot
Suite Setup       Open Browser    ${fastwork_web_url['${ENV}']}    ${browser['${ENV}']}
Suite Teardown    Close Browser

*** Test Cases ***
Verify user input invalid characters in email then error message should display
    [Tags]    FW_02    sign_up_feature
    home_feature.Click login button and Verify sign up and login page should display
    sign_up_feature.Click create account and Verify create account should display
    sign_up_feature.Input all field    ${FW_02["email"]}    ${FW_02["password"]}    ${FW_02["confirm_password"]}    ${FW_02["mobile_number"]}
    sign_up_feature.Selected all checkbox
    sign_up_page.Click create account button for submit
    sign_up_page.Verify error message is please input email should display