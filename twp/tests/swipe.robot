***Settings***
Resource        ../Resources/resource.robot
Test Setup      Open Session
Test Teardown   Close Session

Documentation           aula de swip fazer o evento de arrastar para a direita a tela e selecionar um produto e excluir usa o helpers como parte da implementação



# start_x - x-percent at which to start
# start_y - y-percent at which to start
# end_x - x-percent distance from start_x at which to stop
# end_y - y-percent distance from start_y at which to stop
# duration - (optional) time to take the swipe, in ms.


# Y 17.96 => HORIZONTAL
# X 82.5     => VERTICAL

# Y 17.96 => HORIZONTAL
# X 57.49     => VERTICAL

**Variables***
${BTN_REMOVER}=                 id=io.qaninja.android.twp:id/btnRemove

***Test Cases***
Deve selecionar a lista Avengers
    Go To Avengers List

    Swipe By Percent        82.5    17.96   57.49   17.96

    Wait Until Element Is Visible       ${BTN_REMOVER}
    Click Element                       ${BTN_REMOVER}
    Sleep                               5


