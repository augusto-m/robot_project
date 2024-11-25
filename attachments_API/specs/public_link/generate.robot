*** Settings ***

Resource    ../../resources/attachments_requests.robot


*** Test Cases ***

File ID nonexist

    ${response}    Generate public link    file_id_arg=${fake_file_id}

    Status Should Be    404    ${response}


File less than 20 mb

    ${response}    Full upload flow with wait scan (smaller than 1mb split)

    ${response1}    Generate public link

    Status Should Be    200    ${response1}

    Should Be True    ${response1.headers}[Content-Length] > 200
    Should Contain    ${response1.json()}[url]                      https: 


File over 20 mb

    ${response}    Full upload flow with wait scan (large file)    

    ${response1}    Generate public link

    Status Should Be    200    ${response1}

    Should Be True    ${response1.headers}[Content-Length] > 200
    Should Contain    ${response1.json()}[url]                      https: 


Generate link multiple times

    ${response}    Full upload flow with wait scan (smaller than 1mb split)

    ${response1}    Generate public link
    ${response2}    Generate public link
    ${response3}    Generate public link
    ${response4}    Generate public link

    Status Should Be    200    ${response1}

    Should Be True    ${response1.headers}[Content-Length] > 200
    Should Contain    ${response1.json()}[url]                      https: 


Generate from partial upload

    ${response}     Initiate upload      image_1mb_1_2    
    ${response1}    Upload attachment    image_1mb_1_2

    ${response2}    Generate public link

    Status Should Be    404    ${response2}


Generate from aborted upload

    ${response}     Initiate upload      image_1mb_1_2    
    ${response1}    Upload attachment    image_1mb_1_2
    ${response2}    Abort upload

    ${response3}    Generate public link

    Status Should Be    404    ${response3}
