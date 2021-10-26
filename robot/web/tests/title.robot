*** Settings ***
Resource        resource.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Case ***
Should See Page Title
    Title Should Be     Training Wheels Protocol
   