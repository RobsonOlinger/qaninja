*** Settings ***
Resource        resource.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão



*** Test Case ***
Marcando opção com Id
    Go To              ${url}/checkboxes
    Select checkbox     id:thor
    checkbox Should Be Selected            id:thor
    


Marcando opção com CSS Selector
    Go To              ${url}/checkboxes
    Select checkbox     css:input[value='iron-man']
    checkbox Should Be Selected            css:input[value='iron-man']
   

Marcando opção com Xpath
    Go To              ${url}/checkboxes
    Select checkbox     xpath://*[@id="checkboxes"]/input[7]
    checkbox Should Be Selected            xpath://*[@id="checkboxes"]/input[7]
   
