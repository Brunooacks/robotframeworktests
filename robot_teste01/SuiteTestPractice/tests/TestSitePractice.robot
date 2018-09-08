*** Settings ***
Resource          ../resource/Resource.robot
### Setup ele roda keywords antes da suite ou antes de um teste
Test Setup       Abrir navegador
### Teardown ele roda roda uma keyword depois de uma suite ou antes de um Testes
Test Teardown     Fechar navegador

*** Test Case ***
Caso de Teste 01: Pesquisar Produtos Existentes
    Acessar página home do site
    Digitar o nome de produto "Blouse" no campo de pesquisa
    Clicar no botão de pesquisa
    Conferir se o produto "Blouse" foi listado no site

Caso de Testes 02: Pesquisar Produtos não Existentes
      Acessar página home do site
      Digitar o nome de produto "produtoNãoExistente" no campo de pesquisa
      Clicar no botão de pesquisa
      Conferir mensagem de erro "No results were found for your search "itemNãoExistente"

# *** Keywords ***
