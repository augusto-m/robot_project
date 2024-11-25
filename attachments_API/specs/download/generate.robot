*** Settings ***

Resource    ../../resources/attachments_requests.robot


*** Test Cases ***

File ID nonexist
    
    ${response}    Generate download link    file_id_arg=${fake_file_id}

    Status Should Be      200                           ${response}
    Should Not Contain    ${response.json()}[0][url]    https:


File less than 20 mb

    ${response}    Full upload flow with wait scan (smaller than 1mb split) 

    ${response1}    Generate download link

    Status Should Be    200    ${response1}

    Should Be True    ${response1.headers}[Content-Length] > 200
    Should Contain    ${response1.json()}[0][fileId]                ${file_id}
    Should Contain    ${response1.json()}[0][url]                   https:        



File over 20 mb

    ${response}    Full upload flow with wait scan (large file)

    ${response1}    Generate download link

    Status Should Be    200    ${response1}

    Should Contain    ${response1.json()}[0][fileId]    ${file_id}
    Should Contain    ${response1.json()}[0][url]       https:        


Generate link multiple times

    ${response}    Full upload flow with wait scan (smaller than 1mb split)

    ${response1}    Generate download link
    ${response2}    Generate download link
    ${response3}    Generate download link
    ${response4}    Generate download link

    Status Should Be    200    ${response4}

    Should Be True    ${response4.headers}[Content-Length] > 200
    Should Contain    ${response4.json()}[0][fileId]                ${file_id}
    Should Contain    ${response4.json()}[0][url]                   https:        


Generate from partial upload

    ${response}     Initiate upload      image_1mb_1_2    
    ${response1}    Upload attachment    image_1mb_1_2

    ${response2}    Generate download link

    Status Should Be    200    ${response2}

    Should Not Contain    ${response2.json()}[0][url]    https:


Generate from aborted upload

    ${response}     Initiate upload      image_1mb_1_2    
    ${response1}    Upload attachment    image_1mb_1_2
    ${response2}    Abort upload

    ${response3}    Generate download link

    Status Should Be    200    ${response}

    Should Not Contain    ${response3.json()}[0][url]    https:


Download multiple files

    ${response}    Full upload flow with wait scan

    ${responseVar}    Set Variable    ${file_id}

    ${response2}    Full upload flow with wait scan

    ${responseVar2}    Set Variable    ${file_id}

    ${listVar}    Set Variable    ${responseVar}","${responseVar2}

    ${response3}    Generate download link    ${listVar}

    Status Should Be    200    ${response3}

    Should Be True    ${response3.headers}[Content-Length] > 200

    Should Contain    ${response3.json()}[0][fileId]    ${responseVar}
    Should Contain    ${response3.json()}[0][url]       https:            


    Should Contain    ${response3.json()}[1][fileId]    ${responseVar2}
    Should Contain    ${response3.json()}[1][url]       https:             