*** Settings ***

Resource    ../../resources/browserlib.robot
Resource    ../../seleniumlib.robot


*** Test Cases ***

Playwright test
   Example Test

Selenium test
   Open Browser To Login Page