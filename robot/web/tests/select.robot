*** Settings ***
Resource        resource.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão



*** Test Case ***
Selecionar pelo Texto e validar pelo Valor
    Go To                               ${url}/dropdown
    Select From List By Label           class:avenger-list              Loki
    ${selected}=                        Get Selected List value           class:avenger-list
    Should Be Equal                     ${selected}                     6
    Capture Page Screenshot
    Sleep           3


Selecionar pelo Valor e validar pelo Texto
    Go To                               ${url}/dropdown
    Select From List By value           id:dropdown                                 7
    ${selected}=                        Get Selected List Label                       id:dropdown
    Should Be Equal                     ${selected}                                 Scott Lang
    Capture Page Screenshot
    Sleep           3
    
   

