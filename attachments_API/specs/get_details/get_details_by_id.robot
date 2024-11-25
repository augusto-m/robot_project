*** Settings ***

Resource    ../../resources/attachments_requests.robot


*** Test Cases ***

File ID nonexist

   ${response}    Get details for id    file_id_arg=fake_file_id

   Status Should Be    404    ${response}


Upload incomplete - only Initiate

   ${response}    Initiate upload    image_1mb_1_1

   ${response2}    Get details for id

   Status Should Be    200    ${response2}

   Should Not Be True    ${response2.json()}[uploadCompleted]


Upload incomplete - only initiate and upload stream

   ${response}    Initiate upload    image_1mb_1_1

   ${response2}    Upload attachment    image_1mb_1_1

   ${response3}    Get details for id

   Status Should Be    200    ${response3}

   Should Not Be True    ${response3.json()}[uploadCompleted]


Upload completed

   ${response}    Full upload flow

   ${response3}    Get details for id

   Status Should Be    200    ${response3}

   Should Be True    ${response3.json()}[uploadCompleted]


Upload aborted

   ${response}    Initiate upload    image_1mb_1_1

   ${response2}    Abort upload

   ${response3}    Get details for id

   Status Should Be    404    ${response3}


Validate details by id

    ${response}    Full upload flow

    ${response1}    Get details for id

    ${resTodayDate}    Get today date 

    Should Be Equal    ${response1.json()}[id]             ${file_id}               
    Should Be Equal    ${response1.json()}[name]           ${image_1mb_1_1.name}
    Should Be Equal    ${response1.json()}[domain]/        ${domain}
    Should Contain     ${response1.json()}[createdDate]    ${resTodayDate}
    Should Contain     ${response1.json()}[updatedDate]    ${resTodayDate}
    Should Be Equal    ${response1.json()}[createdBy]      ${user_default}
    Should Be Equal    ${response1.json()}[updatedBy]      ${user_default}