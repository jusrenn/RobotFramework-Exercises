*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Verify New User Signup! is visible
    ${newUserSignupText}    Get Text   ${newUserSignup}
    Should Be Equal   ${newUserSignupText}    New User Signup!

Enter name and email address
    Input Text        ${nameInput}                 ${name}
    Input Password    ${emailInput}                ${email}

Click Signup button
    Click Button      ${signupButton}

Verify Login to your account is visible
    ${loginToYourAccountText}    Get Text    ${loginToYourAccount}
    Should Be Equal   ${loginToYourAccountText}    Login to your account

Fill Email and Password
    Input Text        ${emailInputLoginPage}       ${email}
    Input Password    ${passwordInputLoginPage}    ${password}

Click Login button
    Click Button      ${loginButton}