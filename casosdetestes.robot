*** Settings ***
Documentation    Casos de teste do trabalho final - Shopee
Test Setup       Abrir browser
Test Teardown    Fechar browser
Resource         resources.robot

*** Test Cases ***

CT01: Verificar abertura da página
    [Documentation]    Verifica se a página abre corretamente
    [Tags]    abertura
    Acessar Shopee "https://shopee.com.br/"
    Verificar se a página abre
