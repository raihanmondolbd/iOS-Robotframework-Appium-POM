*** Settings ***
Library  AppiumLibrary
Library  BuiltIn


*** Variables ***
${IOS_AUTOMATION_NAME}        XCUITest
${IOS_APP}                    ${CURDIR}/../APP/UICatalog.app
${IOS_PLATFORM_NAME}          iOS
${IOS_PLATFORM_VERSION}       %{IOS_PLATFORM_VERSION=15.5}
${IOS_DEVICE_NAME}            iPhone 8 Plus
${NO_RESET}                   False


*** Keywords ***
Open_iOS_Test_App
  open application  http://127.0.0.1:4723/wd/hub  automationName=${IOS_AUTOMATION_NAME}
  ...  app=${IOS_APP}  platformName=${IOS_PLATFORM_NAME}  platformVersion=${IOS_PLATFORM_VERSION}
  ...  deviceName=${IOS_DEVICE_NAME}  noReset=${NO_RESET}