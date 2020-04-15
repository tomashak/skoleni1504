*** Settings ***
Documentation  PageObject for MainPage
Library  SeleniumLibrary

*** Variables ***
${SEARCH_FIELD_ID} =  id=form-sitesearch-input
${SEARCH_BTN_XPATH}  //div[@id="mobile-search"]//button

*** Keywords ***
Search for term
    [Documentation]  Vyhledame zadany vyraz, předaný argumentem
    [Arguments]  ${text}
    wait until element is visible  ${SEARCH_FIELD_ID}
    input text  ${SEARCH_FIELD_ID}  ${text}
    click element  ${SEARCH_BTN_XPATH}
