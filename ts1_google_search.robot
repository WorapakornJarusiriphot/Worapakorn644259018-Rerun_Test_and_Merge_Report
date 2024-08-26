*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}          chrome
${SEARCH_TERM}      robot framework
${SEARCH_KEYWORD}    npru
${SEARCH_RESULT}    robot
${SEARCH_RESULT_KEYWORD}    University
${URL}              https://www.google.com


*** Test Cases ***
Search Google and Verify Results TC1001
    [Documentation]    Test case to search Google and verify results
    [Tags]    search
    Open Google
    Maximize Browser Window
    Input Search Term
    Enter Google Search
    Verify Search Results
    Capture Page Screenshot    Search Google and Verify Results.png
    Close Browser

*** Keywords ***
Open Google
    Open Browser    https://www.google.com    ${BROWSER}

Input Search Term
    Input Text    name=q    ${SEARCH_TERM}

Enter Google Search
    Press Keys    name=q    ENTER

Verify Search Results
    Page Should Contain    ${SEARCH_RESULT}
