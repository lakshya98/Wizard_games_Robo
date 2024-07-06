Wizard_games_Robo project folder contains testcases for successful login,
failed login, placing an order in https://www.saucedemo.com/ application.

Test cases are return using Python, selenium library, Robot Framework.

TestCase file contains test cases in understandable format.
PageObject file contains the Keywords file.
Variables file contains locators or Xpath of the elements.
TestData file contains the data used in the test case while performing them.

Commands to run the file and storing the results:-
    robot -d results Successful_login.robot
    robot -d results -i Failed_Login Successful_login.robot  :-to run a particular test case

Libraries needed:-
    1.Robotframework
    2.selenium2library