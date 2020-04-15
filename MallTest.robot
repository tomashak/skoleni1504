*** Settings ***
Documentation  Lorem ipsum dokumentace, url na TC, Jiru, Apiary, kontakty
...  Dalsi radek dokumentace
...  Treti radek dokumentace
Library  SeleniumLibrary

Test Setup  open browser  http://www.mall.cz  chrome
Test Teardown  close browser  #uklidi po sobe

*** Test Cases ***
Mall search Xiaomi
    [Documentation]  Vyhleda text Xiaomi , ID-123, pouzita data
    wait until element is visible  id=form-sitesearch-input
    input text  id=form-sitesearch-input  XIAOMI
    click element  //div[@id="mobile-search"]//button
    wait until element is visible  //h1
    element should contain  //h1  XIAOMI  Kontrola vysledku hledani  #kontrolujeme nadpis


Mall search Samsung
    [Documentation]  Vyhleda text Samsung , ID-124, pouzita data
    wait until element is visible  id=form-sitesearch-input
    input text  id=form-sitesearch-input  SAMSUNG
    click element  //div[@id="mobile-search"]//button
    wait until element is visible  //h1
    element should contain  //h1  SAMSUNG  Kontrola vysledku hledani  #kontrolujeme nadpis


Mall search Rum
    [Documentation]  Vyhleda text Rum , ID-125, pouzita data
    wait until element is visible  id=form-sitesearch-input
    input text  id=form-sitesearch-input  RUM
    click element  //div[@id="mobile-search"]//button
    wait until element is visible  //h1
    element should contain  //h1  RUM  Kontrola vysledku hledani  #kontrolujeme nadpis
