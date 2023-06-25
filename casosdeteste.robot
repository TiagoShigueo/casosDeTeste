*** Settings ***
Documentation    Esta suíte de testes verifica o funcionamento de requerimentos
            ...  gerais na plataforma de e-commerce Shopee
Resource         resourses.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Caso de Teste 5 - Abrir Categoria Artigos de Cozinha
    [Tags]    artigos    cozinha
    Acessar site Shopee na Categoria Casa e Decoração
    Abrir Categoria de Artigos de Cozinha

Caso de Teste 6 - Abrir produto específico com mais informações do produto
    [Tags]    produto
    Acessar site Shopee na Categoria Casa e Decoração
    Pesquisar pelo Produto “Balança Digital”

