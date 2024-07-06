*** Settings ***
Library    Selenium2Library

*** Test Cases ***
open appliaction
    [Tags]
    open browser          https://www.saucedemo.com/    chrome
    maximize browser window

Close application
    [Tags]
    close browser

