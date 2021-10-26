***Settings***
Library         AppiumLibrary




# {
#   "appium:automationName": "UiAutomator2",
#   "platformName": "Android",
#   "appium:deviceName": "Emulator",
#   "appium:app": "C:\\qaninja\\twp\\app\\twp.apk",
#   "appium:udid": "emulator-5554"
# }




***Test Cases***
Deve abrir atela principal
    Open Application                    http://localhost:4723/wd/hub
    ...                                 automationName=UiAutomator2
    ...                                 platformName=Android
    ...                                 deviceName=Emulator
    ...                                 app=${EXECDIR}/app/twp.apk
    ...                                 udid=emulator-5554

    Wait Until Page Contains            Training Wheels Protocol        5
    Wait Until Page Contains            Mobile Version
    Close Application

