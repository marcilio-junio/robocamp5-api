***Settings***
Documentation    POST /auth
...              Testes do serviço de autorização

Resource         ../../resources/services.robot

***Test Cases***
Sucessfuly Login
    [tags]         success

    ${resp}=       Post Token      ${user_email}      ${user_pass} 
    Status Should Be   200         ${resp}

Incorrect Password
    [tags]         not_authorized
    
    ${resp}=       Post Token      ${user_email}      123456   
    Status Should Be   401         ${resp}