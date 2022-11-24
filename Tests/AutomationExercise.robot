*** Settings ***
Documentation    www.automationexercise.com Test Cases
Library          SeleniumLibrary

Resource         ../Resource/Keywords/Common.robot
Resource         ../Resource/Keywords/HomePage.robot
Resource         ../Resource/Keywords/SignupLoginPage.robot
Resource         ../Resource/Keywords/RegistrationPage.robot
Resource         ../Resource/Keywords/AccountVerifyPage.robot

Variables        ../Resource/TestData/TestData.py
Variables        ../Resource/Locators/Locators.py

Test Setup       Open Browser    ${url}    ${browser}
Test Teardown    Close All Browsers

*** Test Cases ***
Test Case 01
    [Documentation]    Register User
    Verify that home page is visible successfully
    Click on Signup / Login button
    Verify New User Signup! is visible
    Enter name and email address
    Click Signup button
    Verify that ENTER ACCOUNT INFORMATION is visible
    Fill details: Title, Name, Email, Password, Date of birth
    Select checkbox Sign up for our newsletter!
    Select checkbox Receive special offers from our partners!
    Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Click Create Account button
    Verify that ACCOUNT CREATED! is visible
    Click Continue button
    Verify that Logged in as username is visible
    Click Logout button
    Sleep    1s

Test Case 02
    [Documentation]    Login
    Verify that home page is visible successfully
    Click on Signup / Login button
    Verify Login to your account is visible
    Fill Email and Password
    Click Login button
    Click Logout button

Test Case 03
    [Documentation]    Delete User
    Click on Signup / Login button
    Verify Login to your account is visible
    Fill Email and Password
    Click Login button
    Click Delete Account button
    Verify that ACCOUNT DELETED! is visible and click Continue button

