*** Settings ***
Library  AppiumLibrary
Library  BuiltIn
Variables  ../Locators/locators.py
Variables  ../TestData/TestData.py


*** Keywords ***
Action_For_Action_Sheets
  click element  ${action_sheets}
  sleep  1
  click element   ${ok_cancel_button}
  sleep  1
  click element   ${cancel_popup}
  Sleep  1
  click element   ${back}
  Sleep  1

Action_For_Text_Fields
  scroll down  ${text_fields}
  sleep  1
  click element  ${text_fields}
  sleep  1
  input text  ${default_textbox}  ${default}
  sleep  1
  input text  ${tinted_textbox}  ${tinted}
  sleep  1
  input text  ${secured_textbox}  ${security_data}
  sleep  1
  input text  ${specific_keyboard_textbox}  ${specific_keyboard}
  sleep  1
  input text  ${custom_textbox}  ${custom}
  sleep  1
  click element  ${done_button}
  go back