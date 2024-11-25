*** Settings ***
Library    Browser


*** Keywords ***

Example Test
    New Page    https://playwright.dev
    Get Text    h1                        contains    Playwright