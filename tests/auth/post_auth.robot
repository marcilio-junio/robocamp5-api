***Settings***
Documentation    POST /auth
...              Testes do serviço de autorização

Resource         ../../resources/services.robot

***Test Cases***
Sucessfuly Login
    [tags]         todo
    ${payload}     Set Suite Var Auth Token 
    ${resp}=       Post Token      ${payload}   
    Status Should Be   200         ${resp}

Incorrect Password
    [tags]         todo
    ${payload}     Set Suite Variable Auth Token      ${user_email}      123456
    ${resp}=       Post Token      ${payload}    
    Status Should Be   401         ${resp}