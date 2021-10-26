*** Settings ***
Resource        resource.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão



*** Test Case ***
Selecionando por Id
    Go To              ${url}/radios
    Select Radio Button                 movies          cap
    Radio Button Should Be Set To           movies       cap
    Sleep           5
    

Slecionando por value
    Go To           ${url}/radios
    Select Radio Button         movies          ant-man
    Radio Button Should Be Set To           movies      ant-man
