***Settings***
Resource        ../Resources/resource.robot
Test Setup      Open Session
Test Teardown   Close Session

Documentation           aula de spinner


***Variables***
${SPINNER}=              id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}=         class=android.widget.ListView
${EMAIL_FAKER}           robsonaso@hotmail.com
${NAME}=                 Robson
${SENHA}=                123456789




***Test Cases***
Deve selecionar um perfil QA
    [tags]              qa
    Go To Signup Form

    Choice Job          QA
    
    Input Text          id=io.qaninja.android.twp:id/etUsername         ${NAME}
    Input Text          id=io.qaninja.android.twp:id/etEmail            ${EMAIL_FAKER}
    Input Text          id=io.qaninja.android.twp:id/etPassword         ${SENHA}

    Click Button       CADASTRAR

    Wait Until Page Contains          Tudo certo, recebemos seus dados!




Deve selecionar um perfil DevOps
    Go To Signup Form

    Choice Job   DevOps



***Keywords***
Choice Job 
    [Arguments]         ${alvo}
    Click Element                           ${SPINNER}
    Wait Until Element Is Visible           ${LIST_OPTIONS}
    Click Text                              ${alvo}
