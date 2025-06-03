*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    BuiltIn
Library    Collections
Library    json
Resource    ../resource/book.resource


*** Test Cases ***
criar varios livros
    Montar Payload Do Livro
   