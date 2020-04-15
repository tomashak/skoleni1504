*** Settings ***
Documentation  Lorem ipsum dokumentace, url na TC, Jiru, Apiary, kontakty
...  Dalsi radek dokumentace
...  Treti radek dokumentace
Library  SeleniumLibrary
Resource  ../Resources/MainPage.robot
Resource  ../Resources/SearchResultPage.robot
Resource  ../Resources/Common.robot

Test Setup  Start Mall test
Test Teardown  close browser  #uklidi po sobe


*** Test Cases ***
Mall search Xiaomi
    [Documentation]  Vyhleda text Xiaomi , ID-123, pouzita data
    [Tags]  search
    Search for term  XIAOMI
    Check search result  XIAOMI


Mall search Samsung
    [Documentation]  Vyhleda text Samsung , ID-124, pouzita data
    [Tags]  search  smoke
    Search for term  SAMSUNG
    Check search result  SAMSUNG


Mall search Rum
    [Documentation]  Vyhleda text Rum , ID-125, pouzita data
    [Tags]  search  regrese
    Search for term  RUM
    Check search result  RUM
