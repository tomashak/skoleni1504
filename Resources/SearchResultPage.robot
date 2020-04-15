*** Settings ***
Documentation  PageObject for MainPage
Library  SeleniumLibrary

*** Variables ***
${SEARCH_RESULT_TITLE}  //h1

*** Keywords ***
Check search result
    [Documentation]  Kontrola nadpisu vysledku
    [Arguments]  ${text}
    wait until element is visible  ${SEARCH_RESULT_TITLE}  timeout=10s
    element should contain  ${SEARCH_RESULT_TITLE}  ${text}  Kontrola vysledku hledani,hledali jsme ${text}  #kontrolujeme nadpis
