*** Settings ***

Resource    ../../resources/attachments_requests.robot


*** Test Cases ***

Get today date

    ${response}    Get today date

    Set Suite Variable    ${resTodayDate}    ${response}


Get event initiate fail

    ${response}    Initiate upload    

    ${response1}    Get details attachment events


Get event initiate upload

    ${response}    Initiate upload

    ${response1}    Get details attachment events

    Status Should Be    200    ${response1}

    Should Be Equal    ${response1.json()}[0][type]       FileCreated
    Should Contain     ${response1.json()}[0][date]       ${resTodayDate}
    Should Be Equal    ${response1.json()}[0][details]    File Created


Get event complete upload

    ${response}    Full upload flow

    ${response1}    Get details attachment events

    Status Should Be    200    ${response1}

    Should Be Equal    ${response1.json()}[1][type]       FileUploaded
    Should Contain     ${response1.json()}[1][date]       ${resTodayDate}
    Should Be Equal    ${response1.json()}[1][details]    File Uploaded


Get event abort upload

    ${response}     Initiate upload
    ${response1}    Upload attachment
    ${response2}    Abort upload

    ${response3}    Get details attachment events

    Status Should Be    404    ${response3}