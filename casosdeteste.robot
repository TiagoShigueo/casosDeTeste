*** Settings ***
Documentation    Esta suíte de testes verifica o funcionamento de requerimentos
            ...  gerais na plataforma de e-commerce Shopee
Resource         resourses.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Caso de Teste 1 - Abrir seção Como Comprar
    [Tags]    ajuda-compra
    Acessar site Shopee "https://shopee.com.br/Casa-e-Decora%C3%A7%C3%A3o-cat.11059983"
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Abrir ajuda Como comprar

Caso de Teste 2 - Abrir central de ajuda
    [Tags]    ajuda
    Acessar site Shopee "https://shopee.com.br/Casa-e-Decora%C3%A7%C3%A3o-cat.11059983"
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Abrir central de ajuda

Caso de Teste 5 - Abrir Categoria Artigos de Cozinha
    [Tags]    artigos    cozinha
    Acessar site Shopee na Categoria Casa e Decoração
    Abrir Categoria de Artigos de Cozinha

# Caso de Teste 6 - Abrir produto específico com mais informações do produto
#     [Tags]    produto
#     Acessar site Shopee na Categoria Casa e Decoração
#     # Pesquisar pelo Produto “Cadeira”
#     # Acessar site Shopee "https://shopee.com.br/Casa-e-Decora%C3%A7%C3%A3o-cat.11059983"
#     Pesquisar pelo produto

# Caso de Teste 10 - Abrir produto específico e exibir detalhes do produto
#     [Tags]    detalhes
#     Acessar site Shopee na Categoria Casa e Decoração
#     Abrir Categoria de Artigos de Cozinha
#     Abrir produto específico

