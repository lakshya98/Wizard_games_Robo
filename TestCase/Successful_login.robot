*** Settings ***
Documentation   "This test file consists of successful login, failed login and product ordering test cases"

Library    Selenium2Library
Resource    ../PageObject/Successful_login.robot

Test Setup          open appliaction
Test Teardown       Close application

*** Test Cases ***

Login to application with lockedoutuser credintials
    [Tags]  Failed_Login
    Enter lockedoutuser username
    Enter lockedoutuser password
    Click on login button
    Verifying error message for the locked out user

Login to application with StandardUser credintials
    [Tags]  Successful_Login
    Enter valid username
    Enter valid password
    Click on login button
    Verifying user is logged in and app logo is visible

Verify user is able to order the product
    [Tags]  Order_a_product
    Login to application with valid credintials
    Sort the products from low to high price range
    Add lowest price product to cart
    Click on cart icon
    Click on checkout button
    Fill the required details:-first name, last name, pin code
    Click on continue button
    Verifying total price of the product is $8.63
    Click on finish button
    Verifying Thank you page in checkout complete page



