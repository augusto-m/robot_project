*** Settings ***

Resource    ../../resources/attachments_requests.robot


*** Test Cases ***

File ID nonexist

   ${response}    Delete attachments    file_id_arg=${fake_file_id}

   Status Should Be    200    ${response}

   Should Be Equal As Integers    ${response.json()}[count]      0
   Should Be Empty                ${response.json()}[deleted]


Deleted file confirmation

   ${response}    Full upload flow

   ${response1}    Delete attachments

   Status Should Be    200    ${response1}

   Should Be Equal As Integers    ${response1.json()}[count]      1
   Should Contain                 ${response1.json()}[deleted]    ${file_id}

   ${response2}    Get details for id

   Status Should Be    404    ${response2}    


File less than 20 mb

   ${response}    Full upload flow (smaller than 1mb split)

   ${response1}    Delete attachments

   Status Should Be    200    ${response1}

   Should Be Equal As Integers    ${response1.json()}[count]      1
   Should Contain                 ${response1.json()}[deleted]    ${file_id}


File over 20 mb

   ${response}    Full upload flow (21mb size image)    

   ${response1}    Delete attachments

   Status Should Be    200    ${response1}

   Should Be Equal As Integers    ${response1.json()}[count]      1
   Should Contain                 ${response1.json()}[deleted]    ${file_id} 


Delete multiple times

   ${response}    Full upload flow (smaller than 1mb split)

   ${response1}    Delete attachments
   ${response2}    Delete attachments

   Status Should Be    200    ${response2}

   Should Be Equal As Integers    ${response2.json()}[count]      0
   Should Be Empty                ${response2.json()}[deleted]    


Delete from partial upload

   ${response}     Initiate upload      image_1mb_1_2    
   ${response1}    Upload attachment    image_1mb_1_2

   ${response2}    Delete attachments

   Status Should Be    200    ${response2}

   Should Be Equal As Integers    ${response2.json()}[count]      1
   Should Contain                 ${response2.json()}[deleted]    ${file_id}    


Delete from aborted upload

   ${response}     Initiate upload      image_1mb_1_2    
   ${response1}    Upload attachment    image_1mb_1_2
   ${response2}    Abort upload

   ${response3}    Delete attachments

   Status Should Be    200    ${response3}

   Should Be Equal As Integers    ${response3.json()}[count]      0
   Should Be Empty                ${response3.json()}[deleted]    


Delete multiple files

   ${response}    Full upload flow

   ${responseVar}    Set Variable    ${file_id}

   ${response2}    Full upload flow

   ${responseVar2}    Set Variable    ${file_id}

   ${listVar}    Set Variable    ${responseVar}","${responseVar2}

   ${response3}    Delete attachments    ${listVar}

   Should Be Equal As Integers    ${response3.json()}[count]    2

   Should Contain    ${response3.json()}[deleted]    ${responseVar}    ${responseVar2}