***Settings***
Resource        ../Resources/resource.robot
Test Setup      Open Session
Test Teardown   Close Session

Documentation           aula de spinner


***Variables***
${SPINNER}=              id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}=         class=android.widget.ListView


***Test Cases***
Deve selecionar um perfil QA
    Go To Signup Form

    Choice Job          QA
    

Deve selecionar um perfil DevOps
    Go To Signup Form

    Choice Job   DevOps



***Keywords***
Choice Job 
    [Arguments]         ${alvo}
    Click Element                           ${SPINNER}
    Wait Until Element Is Visible           ${LIST_OPTIONS}
    Click Text                              ${alvo}
