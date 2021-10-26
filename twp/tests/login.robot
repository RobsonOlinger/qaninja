***Settings***
Resource            ../resources/resource.robot
Test Setup          Open Session
Test Teardown       Close Session

***Variables***

${CAMPO_EMAIL}          id=io.qaninja.android.twp:id/etEmail 
${CAMPO_SENHA}          id=io.qaninja.android.twp:id/etPassword 
${BTN_ENTRAR}           id=io.qaninja.android.twp:id/btnSubmit


***Test Cases****
Deve logar com sucesso
    Go To Login Form

    Input Text       ${CAMPO_EMAIL}       eu@papito.io
    Input Text       ${CAMPO_SENHA}       qaninja

    Click Element    ${BTN_ENTRAR}

    Wait Until Page Contains            Show! Suas credenciais são validas.


