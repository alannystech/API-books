*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     DateTime
Library     JSONLibrary
Resource    ../resource/authors.resource


*** Test Cases ***
Adicionar um novo Autor
    Adicionar um Autor com sucesso
    Adicionar mais de um Autor por vez

Buscar um Autor
    Buscar um Autor por ID
    Buscar um Autor por ID randomico de uma lista
    Buscar um Autor por ID randomico de 1 a 99
    Buscar uma lista de todos os Autor cadastrados
