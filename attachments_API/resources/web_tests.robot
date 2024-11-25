*** Settings ***

Library     SeleniumLibrary
Resource    ../../variables/browser_variables.robot 


*** Keywords ***

Open link in browser
    [Arguments]     ${url}
    Open Browser    ${url}    ${BROWSER}    headlesschrome
