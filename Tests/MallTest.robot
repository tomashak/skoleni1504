*** Settings ***
Documentation  Lorem ipsum dokumentace, url na TC, Jiru, Apiary, kontakty
...  Dalsi radek dokumentace
...  Treti radek dokumentace
Library  SeleniumLibrary
Library  ExcelRobot
Resource  ../Resources/MainPage.robot
Resource  ../Resources/SearchResultPage.robot
Resource  ../Resources/Common.robot

Test Setup  Start Mall test
Test Teardown  close browser  #uklidi po sobe


*** Test Cases ***
Mall search Xiaomi
    [Documentation]  Vyhleda text Xiaomi , ID-123, pouzita data
    [Tags]  search
    open excel  Data/TestData.xlsx
    ${row_count} =  get row count  Sheet1
    :FOR  ${row}  IN RANGE  2  ${row_count}+1
    \   ${search_term} =  read cell data by name  Sheet1  A${row}  #prvni sloupec druhy radek
    \   ${expected_result} =  read cell data by name  Sheet1  B${row}  #druhy sloupec druhy radek
    \   ${note} =  read cell data by name  Sheet1  C${row}  #treti sloupec druhy radek
    \   run keyword and continue on failure  Search for term  ${search_term}
    \   ${status} =  run keyword and ignore error  Check search result  ${expected_result}
    \   log  Poznamka:${note}
    \   go to  ${URL}
    \   open excel to write  Data/TestData.xlsx
    \   write to cell by name  Sheet1  D${row}  ${status}
    #\   run keyword  if    "${status}" == "FALSE"   log  FALSE
    \   save excel

