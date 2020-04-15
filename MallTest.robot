*** Settings ***
Documentation  Lorem ipsum dokumentace, url na TC, Jiru, Apiary, kontakty
...  Dalsi radek dokumentace
...  Treti radek dokumentace
Library  SeleniumLibrary

Test Setup  open browser  ${URL}  ${BROWSER}
Test Teardown  close browser  #uklidi po sobe

*** Variables ***
${URL}  http://www.mall.cz
${BROWSER}  chrome
${SEARCH_FIELD_ID}  id=form-sitesearch-input
${SEARCH_BTN_XPATH}  //div[@id="mobile-search"]//button
${SEARCH_RESULT_TITLE}  //h1


*** Keywords ***
Search for term
    [Documentation]  Vyhledame zadany vyraz, předaný argumentem
    [Arguments]  ${text}
    wait until element is visible  ${SEARCH_FIELD_ID}
    input text  ${SEARCH_FIELD_ID}  ${text}
    click element  ${SEARCH_BTN_XPATH}

Check search result
    [Documentation]  Kontrola nadpisu vysledku
    [Arguments]  ${text}
    wait until element is visible  ${SEARCH_RESULT_TITLE}  timeout=10s
    element should contain  ${SEARCH_RESULT_TITLE}  ${text}  Kontrola vysledku hledani,hledali jsme ${text}  #kontrolujeme nadpis

*** Test Cases ***
Mall search Xiaomi
    [Documentation]  Vyhleda text Xiaomi , ID-123, pouzita data
    Search for term  XIAOMI
    Check search result  XIAOMI


Mall search Samsung
    [Documentation]  Vyhleda text Samsung , ID-124, pouzita data
    Search for term  SAMSUNG
    Check search result  SAMSUNG


Mall search Rum
    [Documentation]  Vyhleda text Rum , ID-125, pouzita data
    Search for term  RUM
    Check search result  RUM
