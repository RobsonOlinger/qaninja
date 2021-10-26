*** settings ***
Library      app.py



*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}       Welcome     Fernando
    Should be Equal     ${result}       Olá Fernando bem vindo ao curso basico de Robot Framework



