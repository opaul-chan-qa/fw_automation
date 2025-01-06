*** Settings ***
Resource    ${CURDIR}/../../import.robot

*** Variables ***
${login_button_locator_id}                 id=login-link

*** Keywords ***
Click login button
    SeleniumLibrary.Wait until element is visible    ${login_button_locator_id}
    SeleniumLibrary.Click element    ${login_button_locator_id}