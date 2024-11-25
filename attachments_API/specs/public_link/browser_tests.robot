*** Settings ***

Resource         ../../resources/attachments_requests.robot

Test Teardown    Close Browser


*** Test Cases ***

Validate lock public link in browser

    ${response}    Full upload flow with wait scan

    ${response2}    Generate public link

    ${response3}    Lock public link

    ${response4}    Open link in browser    ${response2.json()}[url]    

    ${response5}    Get Element Attribute    css=pre    textContent

    Should Contain    ${response5}    Public link blocked

    Should Contain    ${response5}    ${file_id}




