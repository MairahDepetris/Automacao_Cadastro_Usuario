*** Settings ***
Documentation                    Aqui neste arquivo estarão presentes todos os testes

Resource                         ../src/config/package.robot

Test Setup                       New Session
Test Teardown                    Close Browser

*** Test Cases ***
Create a user    
    ${usuarios}=       Get Users        

    FOR       ${usuario}        IN         @{usuarios}
        ${nome}=         Set Variable      ${usuario.get('nome')}
        ${email}=        Set Variable      ${usuario.get('email')}
        ${tel}=          Set Variable      ${usuario.get('telefone')}
        ${sexo}=         Set Variable      ${usuario.get('sexo')}
        ${cidade}=       Set Variable      ${usuario.get('cidade')}
        ${estado}=       Set Variable      ${usuario.get('estado')}
        ${endereco}=     Set Variable      ${usuario.get('endereco')}
        Insert name                        ${nome}
        Insert email                       ${email} 
        Insert tel                         ${tel}
        Insert sexo                        ${sexo}
        Insert cidade                      ${cidade}
        Insert estado                      ${estado}
        Insert endereço                    ${endereco}
        Finish creation
    END 
