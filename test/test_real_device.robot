*** Settings ***
Library           AppiumLibrary
Resource  ../Resources/resource.robot
Resource  ../Resources/BasePage.robot
Test Setup   Open_iOS_Real_Device_App
Test Teardown     Quit Application



*** Test Cases ***
Test case name
    Action_For_Action_Sheets
    Action_For_Text_Fields