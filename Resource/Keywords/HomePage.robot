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