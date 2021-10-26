***Settings***
Library         hello.py



***Test Cases***
Deve retornar mensagem de boas vindas
    ${result}=          hello_robot      Robson
    Log To Console      ${result}
    Should Be Equal     ${result}        olá, Robson bem vindo ao curso de robot framework
