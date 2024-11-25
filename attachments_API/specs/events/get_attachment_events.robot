*** Settings ***

Resource    ../../resources/attachments_requests.robot


*** Test Cases ***

Get today date

    ${response}    Get today date

    Set Suite Variable    ${resTodayDate}    ${response}


Get event file nonexist

   ${response}    Get details attachment events    file_id_arg=${fake_file_id}


Get event generate public link

   ${response}    Full upload flow with wait scan

   ${response1}    Generate public link

   ${response2}    Get details attachment events

   Status Should Be    200    ${response2}

   Should Be Equal    ${response2.json()}[2][type]       PublicLinkCreated
   Should Contain     ${response2.json()}[2][date]       ${resTodayDate}
   Should Be Equal    ${response2.json()}[2][details]    Public Link Generated


Get event generate public link multiple times

   ${response}    Full upload flow with wait scan

   ${response1}    Generate public link

   ${response2}    Generate public link

   ${response3}    Get details attachment events

   Status Should Be    200    ${response3}

   Should Be Equal    ${response3.json()}[3][type]       PublicLinkCreated
   Should Contain     ${response3.json()}[3][date]       ${resTodayDate}
   Should Be Equal    ${response3.json()}[3][details]    Public Link Generated


Get event generate preview link

   ${response}    Full upload flow with wait scan

   ${response1}    Generate preview link

   ${response2}    Get details attachment events

   Status Should Be    200    ${response2}

   Should Be Equal    ${response2.json()}[2][type]       PreviewLinkCreated
   Should Contain     ${response2.json()}[2][date]       ${resTodayDate}
   Should Be Equal    ${response2.json()}[2][details]    Preview Link Generated


Get event generate preview link multiple times

   ${response}    Full upload flow with wait scan

   ${response1}    Generate preview link

   ${response2}    Generate preview link

   ${response3}    Get details attachment events

   Status Should Be    200    ${response3}

   Should Be Equal    ${response3.json()}[3][type]       PreviewLinkCreated
   Should Contain     ${response3.json()}[3][date]       ${resTodayDate}
   Should Be Equal    ${response3.json()}[3][details]    Preview Link Generated


Get event generate download link

   ${response}    Full upload flow with wait scan

   ${response1}    Generate download link

   ${response2}    Get details attachment events

   Status Should Be    200    ${response2}

   Should Be Equal    ${response2.json()}[2][type]       PayloadLinkCreated
   Should Contain     ${response2.json()}[2][date]       ${resTodayDate}
   Should Be Equal    ${response2.json()}[2][details]    Payload Link Generated


Get event generate download link multiple times

   ${response}    Full upload flow with wait scan

   ${response1}    Generate download link
   ${response2}    Generate download link

   ${response3}    Get details attachment events

   Status Should Be    200    ${response3}

   Should Be Equal    ${response3.json()}[3][type]       PayloadLinkCreated
   Should Contain     ${response3.json()}[3][date]       ${resTodayDate}
   Should Be Equal    ${response3.json()}[3][details]    Payload Link Generated


Get event delete attachment

   ${response}     Full upload flow
   ${response1}    Delete attachments
   ${response2}    Get details attachment events

   Status Should Be    404    ${response2}


Get event multiples actions

   ${response}    Full upload flow with wait scan

   ${response1}    Generate preview link

   ${response2}    Generate public link

   ${response3}    Generate download link

   ${response4}    Generate public link

   ${response5}    Get details attachment events

   Status Should Be    200    ${response5}

   Should Be Equal    ${response5.json()}[2][type]    PreviewLinkCreated
   Should Be Equal    ${response5.json()}[3][type]    PublicLinkCreated
   Should Be Equal    ${response5.json()}[4][type]    PayloadLinkCreated

   Should Be Equal    ${response5.json()}[5][type]       PublicLinkCreated
   Should Contain     ${response5.json()}[5][date]       ${resTodayDate}
   Should Be Equal    ${response5.json()}[5][details]    Public Link Generated
