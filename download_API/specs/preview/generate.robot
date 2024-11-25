*** Settings ***

Resource    ../../resources/download_requests.robot


*** Test Cases ***

File ID nonexist

    ${response}    Generate preview link (download_API)    file_id_arg=${fake_file_id}

    Status Should Be    404    ${response}


File less than 20 mb

    ${response}    Full upload flow with wait scan (smaller than 1mb split)

    ${response2}    Generate preview link (download_API)

    Status Should Be    200    ${response2}

    Should Be True    ${response2.headers}[Content-Length] > 200
    Should Contain    ${response2.json()}[url]                      https: 


File over 20 mb

    ${response1}    Full upload flow with wait scan (21mb size image)        

    ${response1}    Generate preview link (download_API)

    Status Should Be    400    ${response1}

    Should Contain    ${response1.json()}[message]    File is too large and cannot be previewed    


Generate link multiple times

    ${response}    Full upload flow with wait scan (smaller than 1mb split)

    ${response1}    Generate preview link (download_API)
    ${response2}    Generate preview link (download_API)
    ${response3}    Generate preview link (download_API)
    ${response4}    Generate preview link (download_API)

    Status Should Be    200    ${response1}

    Should Be True    ${response4.headers}[Content-Length] > 200
    Should Contain    ${response4.json()}[url]                      https: 


Generate from partial upload

    ${response}     Initiate upload      image_1mb_1_2    
    ${response1}    Upload attachment    image_1mb_1_2

    ${response2}    Generate preview link (download_API)

    Status Should Be    404    ${response2}


Generate from aborted upload

    ${response}     Initiate upload      image_1mb_1_2    
    ${response1}    Upload attachment    image_1mb_1_2
    ${response2}    Abort upload

    ${response3}    Generate preview link (download_API)

    Status Should Be    404    ${response3}

