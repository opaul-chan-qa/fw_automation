*** Settings ***
Resource    ${CURDIR}/../../import.robot

*** Keywords ***
Click login button and Verify sign up and login page should display
    home_page.Click login button
    sign_up_page.Verify sign up page display