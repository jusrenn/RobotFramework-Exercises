*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Verify that home page is visible successfully
    Location Should Be    ${url}

Click on Signup / Login button
    Go To                 ${signupLoginLink}

Verify that Logged in as username is visible
    ${loggedInAsUsername}    Get Text    ${loggedInAsUsernameText}
    Should Be Equal       ${loggedInAsUsername}    Logged in as ${name}

Click Delete Account button
    Click Link            ${deleteAccountLink}

Click Logout button
    Go To                 ${logoutLink}
    Go To                 ${url}

Click on Contact Us button
    Go To                 ${contactUsLink}

Scroll down to footer
    Execute Javascript    window.scrollTo(0, 10000)

Verify text SUBSCRIPTION
    ${subscriptionText}    Get Text    ${subscription}
    Should Be Equal    ${subscriptionText}    SUBSCRIPTION

Enter email address in input and click arrow button
    Input Text         ${subscriptionEmailInput}    ${email}
    Click Button       ${subscriptionButton}

Verify success message You have been successfully subscribed! is visible
    ${subscriptionVerifyText}    Get Text    ${subscriptionVerify}
    Should Be Equal    ${subscriptionVerifyText}    You have been successfully subscribed!