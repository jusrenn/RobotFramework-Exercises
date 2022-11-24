*** Settings ***
Documentation    www.automationexercise.com Test Cases
Library          SeleniumLibrary

Resource         ../Resource/Keywords/HomePage.robot
Resource         ../Resource/Keywords/SignupLoginPage.robot
Resource         ../Resource/Keywords/RegistrationPage.robot
Resource         ../Resource/Keywords/AccountVerifyPage.robot
Resource         ../Resource/Keywords/ContactUsPage.robot

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

Test Case 02
    [Documentation]    Login
    Verify that home page is visible successfully
    Click on Signup / Login button
    Verify Login to your account is visible
    Fill Email and Password
    Click Login button
    Click Logout button

Test Case 03
    [Documentation]    Contact Us Form
    Verify that home page is visible successfully
    Click on Contact Us button
    Verify GET IN TOUCH is visible
    Enter name, email, subject and message    This is test subject    This is test message
    Upload file    /Users/yusufrenkoglu/Desktop/testfile.txt
    Click Submit button
    Click OK button
    Verify success message Success! Your details have been submitted successfully. is visible
    Click Home button and verify that landed to home page successfully

Test Case 04
    [Documentation]    Verify Subscription in home page
    Verify that home page is visible successfully
    Scroll down to footer
    Verify text SUBSCRIPTION
    Enter email address in input and click arrow button
    Verify success message You have been successfully subscribed! is visible

Test Case 05
    [Documentation]    Login And Delete User
    Verify that home page is visible successfully
    Click on Signup / Login button
    Verify Login to your account is visible
    Fill Email and Password
    Click Login button
    Click Delete Account button
    Verify that ACCOUNT DELETED! is visible and click Continue button

