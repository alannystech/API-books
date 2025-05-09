*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary
Resource    ../resource/authors.resource

*** Variables ***

*** Test Case ***
Adicionar um novo Autor   
    Adicionar um Autor com sucesso