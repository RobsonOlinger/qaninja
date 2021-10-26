***Settings***
Resource        ../Resources/resource.robot
Test Setup      Open Session
Test Teardown   Close Session

Documentation           aula de drop and drag movendo listas usando uma programação em Python pois nao existe uma Keyword para esta função tem que passar o locator puro posição que esta mais a posição que vc que ele fique


***Test Cases***
Deve mover o Hulk para o topo da lista
    Go To Avengers List

    Drag and Drop               io.qaninja.android.twp:id/drag_handle       3           0
    Sleep                       5
