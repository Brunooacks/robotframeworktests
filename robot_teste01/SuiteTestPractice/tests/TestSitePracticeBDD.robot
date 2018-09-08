*** Settings ***
Library           SeleniumLibrary
### Setup ele roda keywords antes da suite ou antes de um teste
Teste Setup       Abrir navegador
### Teardown ele roda roda uma keyword depois de uma suite ou antes de um Testes
Test Teardown     Fechar navegador
*** Variables ***
${URL}          http://automationpractice.com
${BROWSER}      chrome
*** Test Case ***
Cenário 01: Pesquisar Produtos Existentes
### utilizando o setup direto no caso de teste [Setup]    abrir  navegador
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca
### utilizando o Teardown direto no caso de teste  [Teardown]  fechar navegador
Cenário 02: Pesquisar Produtos não Existentes
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "produtoNãoExistente"
    Então a página deve exibir a mensagem "No results were found for your search "produtoNãoExistente""
*** Keywords ***
