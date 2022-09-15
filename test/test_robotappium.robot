*** Settings ***
Resource  ../Resources/resource.robot
Resource  ../Resources/BasePage.robot

Test Setup  Open_iOS_Test_App
Test Teardown  Quit Application

*** Test Cases ***
OPEN_APP
    Action_For_Action_Sheets
    Action_For_Text_Fields
