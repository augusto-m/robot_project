*** Settings ***

Resource    attachments_requests.robot


*** Keywords ***

Validate status scan
   [Arguments]    ${statusScan}=Completed
   ${response}    Get details for id

   Should Be Equal    ${response.json()}[status]    ${statusScan}
   
   [Return]    ${response}
