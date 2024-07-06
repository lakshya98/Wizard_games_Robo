*** Settings ***
Library     selenium2library

Resource    ../Variables/Successful_login.robot
Resource    ../TestData/Successful_login.robot

*** Keywords ***
#opening application url in chrome browser
open appliaction
    open browser          ${url}    ${Browser}
    maximize browser window

#Successful_Login
Enter valid username
    Wait Until Page Contains Element    ${username_loc}     20s
    input text     ${username_loc}      ${username_text}

Enter valid password
    Wait Until Page Contains Element    ${password_loc}     20s
    input text     ${password_loc}      ${password_text}

Click on login button
    Click Element       ${login_btn_loc}

Verifying user is logged in and app logo is visible
    Wait Until Page Contains Element        ${logo_loc}     10s
    Capture Page Screenshot

#Failed_Login
Enter lockedoutuser username
    Wait Until Page Contains Element    ${username_loc}     20s
    input text     ${username_loc}      ${locked_username_text}

Enter lockedoutuser password
    Wait Until Page Contains Element    ${password_loc}     20s
    input text     ${password_loc}      ${locked_password_text}

Verifying error message for the locked out user
    Wait Until Page Contains Element        ${error_msg_loc}    20s
    Capture Page Screenshot

#Order_a_product
Sort the products from low to high price range
    click Element       ${cart_filter_icon_loc}
    Click Element       ${low_high_option_loc}
    Sleep    2s

Add lowest price product to cart
    click Element       ${add_to_cart_lowest_loc}

Click on cart icon
    Click Element       ${cart_icon_loc}

Click on checkout button
    Wait Until Page Contains Element        ${checkout_btn_loc}     20s
    Click Element       ${checkout_btn_loc}

Fill the required details:-first name, last name, pin code
    Wait Until Page Contains Element        ${checkout_info_loc}    10s
    Wait Until Page Contains Element        ${first_name_loc}    10s
    Input Text      ${first_name_loc}       ${first_name_text}
    Input Text      ${last_name_loc}       ${last_name_text}
    Input Text      ${pin_code_loc}       ${pin_code_text}

Click on continue button
    Click Element       ${Continue_btn_loc}

Verifying total price of the product is $8.63
    ${total_price}      Get Text    ${total_price_loc}
    Should Be Equal As Strings    ${total_price}[7:12]    $8.63

Click on finish button
    Click Element       ${finish_btn_loc}

Verifying Thank you page in checkout complete page
    Wait Until Page Contains Element        ${thank_you_loc}    10s
    Capture Page Screenshot

Login to application with valid credintials
    Enter valid username
    Enter valid password
    Click on login button
    Verifying user is logged in and app logo is visible

#Closing window
Close application
    close browser
