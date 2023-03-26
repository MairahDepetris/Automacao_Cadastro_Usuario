*** Settings ***
Documentation                    Aqui estarão presentes as configurações de Setup e Teardown

Resource                         package.robot

*** Variables ***
${browser}                       firefox
${url}                           https://mairahdepetris.github.io/Formulario_Cadastro_Usuario/
${forms_nome}                    id=nome
${forms_email}                   id=email
${forms_telefone}                id=telefone
${forms_sexo_femi}               id=feminino
${forms_sexo_masc}               id=masculino
${forms_sexo_outro}              id=outro
${forms_cidade}                  id=cidade
${forms_estado}                  id=estado
${forms_endereco}                id=endereco
${forms_enviar}                  id=submit

*** Keywords ***
New Session
    Open Browser                                about:blank                ${browser}
    Maximize Browser Window                     
    Go To                                       ${url}            
