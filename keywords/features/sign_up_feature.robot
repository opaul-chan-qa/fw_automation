*** Settings ***
Resource    ${CURDIR}/../../import.robot

*** Keywords ***
Click login button and Verify sign up and login page should display
    home_page.Click login button
    sign_up_page.Verify sign up page display

Click create account and Verify create account should display
    sign_up_page.Click create account button
    sign_up_page.Verify create account page display

Generate random value and Input all field
    [Arguments]   ${domain_name}
    ${random_email}    common.Generate random email   ${domain_name}
    sign_up_page.Input email    ${random_email}
    ${random_password}    common.Generate random password
    sign_up_page.Input password    ${random_password}
    sign_up_page.Input confirm password    ${random_password}
    ${random_mobile_number}    common.Generate random mobile number
    sign_up_page.Input mobile number    ${random_mobile_number}
    RETURN     ${random_email}

Selected all checkbox
    sign_up_page.Click checkbox terms and conditions
    sign_up_page.Click checkbox privacy policy
    sign_up_page.Click checkbox marketing

Click create account button and Verify confirm email page should display
    sign_up_page.Click create account button for submit
    sign_up_page.Verify confirm email page display

Input all field
    [Arguments]   ${email}    ${password}    ${confirm_password}    ${mobile_number}
    sign_up_page.Input email    ${email}
    sign_up_page.Input password    ${password}
    sign_up_page.Input confirm password    ${confirm_password}
    sign_up_page.Input mobile number    ${mobile_number}