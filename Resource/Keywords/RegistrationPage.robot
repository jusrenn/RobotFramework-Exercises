*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Verify that ENTER ACCOUNT INFORMATION is visible
    ${currentRegistrationPageText}    Get Text    ${registrationPageText}
    Should Be Equal    ${currentRegistrationPageText}    ENTER ACCOUNT INFORMATION

Fill details: Title, Name, Email, Password, Date of birth
    Select Radio Button                  ${radioButtonGroupName}     ${title}
    Input Password                       ${passwordInput}            ${password}
    Select From List By Value            ${bDaySelect}               ${bDay}
    Select From List By Value            ${bMonthSelect}             ${bMonth}
    Select From List By Value            ${bYearSelect}              ${bYear}

Select checkbox Sign up for our newsletter!
    Select Checkbox                      ${newsletterCheckbox}

Select checkbox Receive special offers from our partners!
    Select Checkbox                      ${offerCheckbox}

Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Input Text                           ${registerPageNameInput}    ${name}
    Input Text                           ${lastnameInput}            ${lastname}
    Input Text                           ${companyInput}             ${company}
    Input Text                           ${address1Input}            ${address1}
    Input Text                           ${address2Input}            ${address2}
    Select From List By Value            ${countrySelect}            ${country}
    Input Text                           ${stateInput}               ${states}
    Input Text                           ${cityInput}                ${city}
    Input Text                           ${zipcodeInput}             ${zipcode}
    Input Text                           ${phoneNumberInput}         ${phoneNumber}

Click Create Account button
    Click Button                         ${createAccountButton}

