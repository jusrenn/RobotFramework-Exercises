*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Verify that ACCOUNT CREATED! is visible
    ${accountCreatedText}    Get Text    ${accountCreated}
    Should Be Equal    ${accountCreatedText}    ACCOUNT CREATED!

Click Continue button
    Click Link         ${continueButton}

Verify that ACCOUNT DELETED! is visible and click Continue button
    ${accountDeletedText}    Get Text    ${accountDeleted}
    Should Be Equal    ${accountDeletedText}    ACCOUNT DELETED!
    Click Continue button