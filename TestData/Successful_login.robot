*** Variables ***
${Browser}          chrome
${url}              https://www.saucedemo.com/

#successful login test case credentials
${username_text}            standard_user
${password_text}            secret_sauce

#Failed login test case credentials
${locked_username_text}     locked_out_user
${locked_password_text}      secret_sauce

#Checkout form information
${first_name_text}          jhon
${last_name_text}           doe
${pin_code_text}            123
