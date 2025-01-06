*** Settings ***
Resource    ${CURDIR}/../../import.robot

*** Variables ***
${login_and_sign_up_header_xpath}              xpath=//h1[contains(text(), 'เข้าสู่ระบบ / สร้างบัญชี')]
${create_account_button_xpath}                 xpath=//span[contains(text(), 'สร้างบัญชี')]
${create_account_header_xpath}                 xpath=//h1[contains(text(), 'สร้างบัญชี Fastwork')]
${email_field_xpath}                           xpath=//input[@placeholder='ระบุอีเมล']
${password_field_xpath}                        xpath=//input[@placeholder='ระบุรหัสผ่าน']
${confirm_password_field_xpath}                xpath=//input[@placeholder='ระบุยืนยันรหัสผ่าน']
${mobile_number_field_xpath}                   xpath=//input[@placeholder='ระบุเบอร์โทร']
${check_box_terms_and_conditions_locator_id}   id=terms
${check_box_privacy_policy_locator_id}         id=privacy
${check_box_marketing_locator_id}              id=marketing
${create_account_button_locator_id}            xpath=//button[@type='submit' and span[text()='สร้างบัญชี']]
${confirm_email_header_xpath}                  xpath=//h1[contains(text(), 'ยืนยันอีเมล')]
${please_input_email_error_message_xpath}      xpath=//div[contains(text(), 'กรุณากรอกอีเมลหรือเบอร์โทร')]
${confirm_email_button_xpath}                        xpath=//button/span[contains(text(), 'ยืนยันอีเมล')]
${incorrect_verification_code_xpath}           xpath=//span[contains(text(), 'รหัสไม่ถูกต้อง หรือ รหัสหมดอายุ')]

*** Keywords ***
Verify sign up page display
    SeleniumLibrary.Wait until element is visible    ${login_and_sign_up_header_xpath}

Click create account button
    SeleniumLibrary.Click element    ${create_account_button_xpath}

Verify create account page display
    SeleniumLibrary.Wait until element is visible    ${create_account_header_xpath}

Input email
    [Arguments]    ${email}
    SeleniumLibrary.Input text    ${email_field_xpath}    ${email}

Input password
    [Arguments]    ${password}
    SeleniumLibrary.Input text    ${password_field_xpath}    ${password}

Input confirm password
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Input text    ${confirm_password_field_xpath}    ${confirm_password}

Input mobile number
    [Arguments]    ${mobile_number}
    SeleniumLibrary.Input text    ${mobile_number_field_xpath}    ${mobile_number}

Click checkbox terms and conditions
    SeleniumLibrary.Click element    ${check_box_terms_and_conditions_locator_id}

Click checkbox privacy policy
    SeleniumLibrary.Click element    ${check_box_privacy_policy_locator_id}

Click checkbox marketing
    SeleniumLibrary.Click element    ${check_box_marketing_locator_id}

Click create account button for submit
    SeleniumLibrary.Click element    ${create_account_button_locator_id}

Verify confirm email page display
    SeleniumLibrary.Wait until element is visible    ${confirm_email_header_xpath}

Verify email in confirm email page display should matched with input email
    [Arguments]    ${email}
    SeleniumLibrary.Wait until element is visible      xpath=//span[contains(text(), 'รหัสยืนยันถูกส่งไปที่อีเมล ${email}')]

Input incorrect Verification Code
    FOR    ${i}    IN RANGE    1    7
        ${xpath} =    Set Variable    xpath=//input[contains(@aria-label, 'Please enter OTP character ${i}')]
        SeleniumLibrary.Input text     ${xpath}    ${i}
    END

Verify error message is please input email should display
    SeleniumLibrary.Wait until element is visible     ${please_input_email_error_message_xpath}

Click confirm email button
    SeleniumLibrary.Wait until element is visible    ${confirm_email_button_xpath}
    SeleniumLibrary.Click element    ${confirm_email_button_xpath}

Verify error message is incorrect Verification code should display
    SeleniumLibrary.Wait until element is visible     ${incorrect_verification_code_xpath}