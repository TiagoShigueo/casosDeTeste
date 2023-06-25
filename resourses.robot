*** Settings ***
Documentation        Implementação das keywords dos casos de teste da Secretaria On-line
Library    SeleniumLibrary
Library    DateTime
Library    String
Library    Process

*** Variables ***
${BROWSER}                chrome
${URL}                    https://shopee.com.br/Casa-e-Decora%C3%A7%C3%A3o-cat.11059983
${ELEM_PAG_INICIAL}       //div[@class='rGUDkI'][contains(.,'Suas preferências de cookies')]

*** Keywords ***
Abrir navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser

Acessar site Shopee na Categoria Casa e Decoração
    Go To    ${URL}
    Wait Until Element Is Visible    ${ELEM_PAG_INICIAL}
    Aceitar Cookies
Aceitar Cookies
    Click Element    //button[@class='wyhvVD _1EApiB EQ6q92 cepDQ1 _7w24N1'][contains(.,'Aceitar todos os cookies')]
    Wait Until Element Is Not Visible   ${ELEM_PAG_INICIAL}

Abrir Categoria de Artigos de Cozinha
    Click Element    //a[@class='shopee-category-list__sub-category'][contains(.,'Artigos de Cozinha')]
    Wait Until Element Is Visible    //div[@class='shopee-sort-by-options']

Pesquisar pelo Produto “Balança Digital”
    Input Text    //input[contains(@aria-label,'Pesquisar em Casa e Decoração')]    Balança Digital
    Click Element    //button[@class='btn btn-solid-primary btn--s btn--inline shopee-searchbar__search-button']
    Wait Until Element Is Visible    //span[@class='shopee-search-result-header__text']



