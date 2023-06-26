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

Pesquisar pelo Produto “cadeira”
    Input Text    //input[contains(@aria-label,'Pesquisar em Casa e Decoração')]    Cadeira
    Click Element    //button[@class='btn btn-solid-primary btn--s btn--inline shopee-searchbar__search-button']
    Wait Until Element Is Visible    //span[@class='shopee-search-result-header__text']

Pesquisar pelo produto
    Input Text    //input[contains(@aria-label,'Buscar na Shopee')]    Cadeira
    Click Element    //button[@class='btn btn-solid-primary btn--s btn--inline shopee-searchbar__search-button']
    Wait Until Element Is Visible    //div[@class='shopee-header-section__header__title'][contains(.,'lojas relacionadas a "cadeira"')]


Abrir produto específico
    Click Element    //div[@class='_1yN94N WoKSjC _2KkMCe'][contains(.,'Jogo de Panelas Antiaderente 9 Peças Tampa de Vidro Teflon')]
    Wait Until Element Is Visible    //div[@class='Iv7FJp'][contains(.,'Detalhes do Produto')]

Acessar site Shopee "${URL}"
    Go To    ${URL}
    Wait Until Element Is Visible    ${ELEM_PAG_INICIAL}
    Aceitar Cookies
    # Wait Until Element Is Visible    //span[@class='xTjlXx'][contains(.,'Central de Ajuda')]

Abrir central de ajuda
    Wait Until Element Is Visible    //div[@class='JMCbqu'][contains(.,'ATENDIMENTO AO CLIENTE')]
    Click Element    //span[@class='xTjlXx'][contains(.,'Central de Ajuda')]
    Switch Window    new
    Wait Until Element Is Visible    //h1[@class='search_title___3_f3g'][contains(.,'Oi, como podemos ajudar?')]

Abrir ajuda Como comprar
    Wait Until Element Is Visible    //div[@class='JMCbqu'][contains(.,'ATENDIMENTO AO CLIENTE')]
    Click Element    //span[@class='xTjlXx'][contains(.,'Como Comprar')]
    Switch Window    new
    Wait Until Element Is Visible    //h1[@class='search_title___3_f3g'][contains(.,'Oi, como podemos ajudar?')]
