*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library          SeleniumLibrary


*** Variables ***
${LOGIN URL}    https://www.selenium.dev/
${BROWSER}      Chrome


*** Keywords ***

Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}    