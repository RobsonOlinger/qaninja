***Settings***
Resource        ../resources/resource.robot
Test Setup      Open Session
Test Teardown   Close Session


# {
#   "appium:automationName": "UiAutomator2",
#   "platformName": "Android",
#   "appium:deviceName": "Emulator",
#   "appium:app": "C:\\qaninja\\twp\\app\\twp.apk",
#   "appium:udid": "emulator-5554"
# }

***Variables***
${TOOLBAR_TITLE}            id=io.qaninja.android.twp:id/toolbarTitle


***Test Cases***
Deve abrir a tela Dialogs
    Open Nav

                                  
    Click Text                          DIALOGS

    Wait Until Element Is Visible       ${TOOLBAR_TITLE}                                           
    Element Text Should Be              ${TOOLBAR_TITLE}        DIALOGS
     

Deve abrir a tela de Formulário
    Open Nav
                                        
   
    Click Text                          FORMS

    Wait Until Element Is Visible       ${TOOLBAR_TITLE}                                            
    Element Text Should Be              ${TOOLBAR_TITLE}        FORMS
     
     

Deve abrir a tela de Avengers
    Open Nav                                
    
    Click Text                          AVENGERS

    Wait Until Element Is Visible       ${TOOLBAR_TITLE}                                            
    Element Text Should Be              ${TOOLBAR_TITLE}        AVENGERS
     

    


