*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Verify GET IN TOUCH is visible
    ${getInTouchText}    Get Text    ${getInTouch}
    Should Be Equal    ${getInTouchText}    GET IN TOUCH

Enter name, email, subject and message
    [Arguments]     ${subject}    ${message}
    Input Text              ${nameInputContactPage}    ${name}
    Input Text              ${emailInputContactPage}   ${email}
    Input Text              ${subjectInput}            ${subject}
    Input Text              ${messageTextarea}         ${message}

Upload file
    [Arguments]     ${filePath}
    Choose File             ${uploadFileButton}        ${filePath}

Click Submit button
    Click Button            ${submitContactForm}

Click OK button
    Handle Alert    ACCEPT

Verify success message Success! Your details have been submitted successfully. is visible
    ${successMessageText}    Get Text    ${successMessage}
    Should Be Equal         ${successMessageText}    Success! Your details have been submitted successfully.

Click Home button and verify that landed to home page successfully
    Click Link              ${homeButton}
    Location Should Be      ${url}