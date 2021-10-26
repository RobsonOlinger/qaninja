*** Settings ***
Resource        resource.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão



*** Test Case ***
Login com sucesso
    Go To                           ${url}/login
    Login With                      stark       jarvis!
    Should See Logged username      Tony Stark


Senha Invalida
    [tags]                      login_error
    Go To                       ${url}/login
    Login With                  stark           pt123456
   
    Should Contain Login Alert                    Senha é invalida!
           

Usuário não existe
    [tags]                      login_user404
    Go To                       ${url}/login
    Login With                  papito              123456
   
    Should Contain Login Alert        O usuário informado não está cadastrado!


*** Keywords ***
Login With
    [Arguments]                 ${uname}        ${pass}
    Input Text                  css:input[name=username]       ${uname}
    Input Text                  css:input[name=password]       ${pass}
    Click Element               class:btn-login



Should Contain Login Alert
    [Arguments]                 ${expect_menssage}
    ${message}=                 Get WebElement              id:flash
    Should Contain              ${message.text}             ${expect_menssage}


Should See Logged username
    [Arguments]                 ${full_name}
    Page Should Contain         Olá, ${full_name}. Você acessou a área logada!
   