*** Settings ***
Library  AppiumLibrary
Library  BuiltIn


*** Variables ***
""" Desired Capabilities For Simulator Device """
${IOS_AUTOMATION_NAME}        XCUITest
${IOS_APP}                    ${CURDIR}/../APP/UICatalog.app
${IOS_PLATFORM_NAME}          iOS
${IOS_PLATFORM_VERSION}       %{IOS_PLATFORM_VERSION=15.5}
${IOS_DEVICE_NAME}            iPhone 8 Plus
${NO_RESET}                   False


""" Desired Capabilities For Real Device """
${REMOTE_URL}   http://127.0.0.1:4723/wd/hub
${platformName}    iOS
${appium:platformVersion}    15.6
${appium:deviceName}    iPhone 11
#${appium:app}    /Users/qups/Library/Developer/Xcode/DerivedData/UICatalog-ejiokmvvhyiblpcfjtdcyyiledfg/Build/Products/Debug-iphoneos/UICatalog.app
${appium:app}    ${CURDIR}/../APP/UICatalog.app
${appium:automationName}    XCUITest
${appium:noReset}    true
${appium:udid}    00008030-001C25213A23C02E
${appium:includeSafariInWebviews}    True
${appium:newCommandTimeout}    3600
${appium:connectHardwareKeyboard}    True


*** Keywords ***
""" ******* Open Application For Simulator Device ******* """
Open_iOS_Test_App
  open application  http://127.0.0.1:4723/wd/hub  automationName=${IOS_AUTOMATION_NAME}
  ...  app=${IOS_APP}  platformName=${IOS_PLATFORM_NAME}  platformVersion=${IOS_PLATFORM_VERSION}
  ...  deviceName=${IOS_DEVICE_NAME}  noReset=${NO_RESET}



""" ******* Open Application For Real Device ******* """
Open_iOS_Real_Device_App
  open application    ${REMOTE_URL}   platformName=${platformName}
  ...  appium:platformVersion=${appium:platformVersion}  appium:deviceName=${appium:deviceName}
  ...  appium:app=${appium:app}  appium:automationName=${appium:automationName}
  ...  appium:noReset=${appium:noReset}  appium:udid=${appium:udid}
  ...  appium:newCommandTimeout=${appium:newCommandTimeout}