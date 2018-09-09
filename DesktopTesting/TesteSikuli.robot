*** Settings ***
Documentation      Sikuli Library Demo
Test Setup         Carrega diretório de imagens
Test Teardown      Stop Remote Server
Library            SikuliLibrary


*** Variables ***
#As imagens da pasta img devem estar de acordo com a interface do seu PC!!!! Tire os prints necessários!
${IMAGE_DIR}      ${CURDIR}\\img

*** Test Cases ***
Acesso ao Spotfy
    Clicar no icone do Spotify
    Clicar na playlist
    Clicar no play
    Fechar o Spotfy

*** Keywords ***
Carrega diretório de imagens
    Add Image Path    ${IMAGE_DIR}

Clicar no icone do Spotify
    Click    spotify.png

Clicar na playlist
    Click    playlist_rap.png

Clicar no play
    Click    play_and_music.png

Fechar o Spotfy
    Click    closed.png
