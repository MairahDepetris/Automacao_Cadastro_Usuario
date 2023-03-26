*** Settings ***
Documentation                                Aqui estarão presentes todas as keywords.

Resource                                     ../../config/package.robot


*** Keywords ***
Insert name
    [Arguments]                              ${nome}
    Wait Until Element Is Visible            ${forms_nome}
    Click Element                            ${forms_nome}
    Input Text                               ${forms_nome}          
    ...                                      ${nome}
    Sleep                                    0.5s

Insert email
    [Arguments]                              ${email}
    Wait Until Element Is Visible            ${forms_email}
    Click Element                            ${forms_email}
    Input Text                               ${forms_email}       
    ...                                      ${email}
    Sleep                                    0.5s

Insert tel
    [Arguments]                              ${tel}
    Wait Until Element Is Visible            ${forms_telefone}
    Click Element                            ${forms_telefone}
    Input Text                               ${forms_telefone}      
    ...                                      ${tel}
    Sleep                                    0.5s

Insert sexo
    [Arguments]                              ${sexo}
    ${sexo_f} =          Set Variable        ${sexo.lower() == 'feminino'}
    ${sexo_m} =          Set Variable        ${sexo.lower() == 'masculino'}
    ${sexo_o} =          Set Variable        ${sexo.lower() == 'outros'}
    Run Keyword If       ${sexo_m}           Click Element                                ${forms_sexo_masc}
    Run Keyword If       ${sexo_f}           Click Element                                ${forms_sexo_femi}
    Run Keyword If       ${sexo_o}           Click Element                                ${forms_sexo_outro}
    Sleep                                    0.5s

Insert cidade
    [Arguments]                              ${cidade}
    Wait Until Element Is Visible            ${forms_cidade}
    Click Element                            ${forms_cidade}
    Input Text                               ${forms_cidade}      
    ...                                      ${cidade}
    Sleep                                    0.5s

Insert estado
    [Arguments]                              ${estado}
    Wait Until Element Is Visible            ${forms_estado}
    Click Element                            ${forms_estado}
    Input Text                               ${forms_estado}       
    ...                                      ${estado}
    Sleep                                    0.5s

Insert endereço
    [Arguments]                              ${endereco}
    Wait Until Element Is Visible            ${forms_endereco}
    Click Element                            ${forms_endereco}
    Input Text                               ${forms_endereco}     
    ...                                      ${endereco}
    Sleep                                    0.5s

Finish creation
    Wait Until Element Is Visible            ${forms_enviar}
    Click Element                            ${forms_enviar}
    Sleep                                    2s