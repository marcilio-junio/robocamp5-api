***Settings***
Documentation    POST /auth
...              Testes do serviço de autorização

Resource         ../../resources/services.robot

***Test Cases***
Sucessfuly Login
    ${payload}     ::::
    ${resp}=       Post Token      ${payload}   
    Status Should Be   200         ${resp}

Incorrect Password
    ${payload}     ::::
    ${resp}=       Post Token      ${payload}   
    Status Should Be   401         ${resp}