*** Settings ***
Library    JSONLibrary
Library    Collections
Resource   ../config/config.resource
Library    RequestsLibrary
Library    OperatingSystem
Library    json

*** Variables ***
${BOOKS_JSON_PATH}    config/payload/books.json
@{LIST_ID}            123    145    160
@{LIST_TITLE}         A menina que não queria amar    A sombra do vento    O livro do amanhã
@{LIST_DESCRIPTION}   romance    ficção    aventura
@{LIST_PAGE_COUNT}    200    300    150
@{LIST_EXCERPT}       Este é apenas um trecho do livro.    Um livro fascinante.    Uma história incrível.
@{LIST_PUBLISH_DATE}  2025-05-23T00:00:00Z    2024-06-15T00:00:00Z    2023-07-10T00:00:00Z


*** Keywords ***
Montar Payload Do Livro
    ${BOOKS_JSON_PATH}=    Set Variable    ${BOOKS_JSON_PATH}
    ${ID}=                 Evaluate    random.choice(${LIST_ID})
    ${TITLE}=              Evaluate    random.choice(${LIST_TITLE})
    ${DESCRIPTION}=        Evaluate    random.choice(${LIST_DESCRIPTION})
    ${PAGE_COUNT}=         Evaluate    random.choice(${LIST_PAGE_COUNT})
    ${EXCERPT}=            Evaluate    random.choice(${LIST_EXCERPT})
    ${PUBLISH_DATE}=       Evaluate    random.choice(${LIST_PUBLISH_DATE})

    ${payload}=    Create Dictionary
    ...    id=${ID}
    ...    title=${TITLE}
    ...    description=${DESCRIPTION}
    ...    pageCount=${PAGE_COUNT}
    ...    excerpt=${EXCERPT}
    ...    publishDate=${PUBLISH_DATE}

    Log    ${payload}
    [Return]    ${payload}