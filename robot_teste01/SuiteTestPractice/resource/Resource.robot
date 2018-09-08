*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${BROWSER}      gc
${URL}          http://automationpractice.com

*** Keywords ***
### Setup e Teardown
Abrir navegador
    Open Browser    about:blank   ${BROWSER}
Fechar navegador
    Close Browser
### Steps
Acessar página home do site
    Go To              http://automationpractice.com
    Title Should Be    My Store
Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    name=search_query    ${PRODUTO}
Clicar no botão de pesquisa
    Click Element    name=submit_search
Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible     css=#center_column > h1
    Title Should Be                   Search - My Store
    Page Should Contain Image         xpath=//*[@id="center_column"]//*[@src="http://automationpractice.com/img/p/7/7-home_default.jpg"]
Conferir mensagem de erro "No results were found for your search "itemNãoExistente"
    Wait Until Element Is Visible    css=#center_column > h1
    Title Should Be                   Search - My Store
    Element Text Should Be    xpath=//*[@id="center_column"]/p    No results were found for your search "produtoNãoExistente"    
