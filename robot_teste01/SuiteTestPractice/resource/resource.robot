*** Settings ***
Library   SeleniumLibrary



*** Variables ***
${BROWSER}      chrome
${URL}          http://automationpractice.com

*** Keywords ***
### Setup e Teardown
Abrir navegador
    Open Browser    about:blank   ${BROWSER}
Fechar navegador
    Close Browser
### Steps
Acessar página home do site
    Go To              http://automationpractice.Comment
    Title Should Be    My Store
