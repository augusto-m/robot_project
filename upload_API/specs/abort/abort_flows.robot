*** Settings ***

Resource    ../../resources/upload_requests.robot


*** Test Cases ***


Abort file_id nonexist

    ${response}    Initiate upload    image_1mb_1_1

    ${response2}    Abort upload    file_id_arg=${fake_file_id}

    Status Should Be    404    ${response2}

    ${response4}    Abort upload


Abort upload_id nonexist

    ${response}    Initiate upload    image_1mb_1_1

    ${response2}    Upload attachment    image_1mb_1_1

    ${response3}    Complete upload

    ${response4}    Abort upload    upload_id_arg=${fake_upload_id}

    Status Should Be    400    ${response4}


Abort after complete upload

    ${response}    Initiate upload    image_1mb_1_1

    ${response2}    Upload attachment    image_1mb_1_1

    ${response3}    Complete upload

    Status Should Be    204    ${response3}

    ${response4}    Abort upload

    Status Should Be    400    ${response4}

    ${response5}    Get details for id

    Status Should Be    200    ${response5}

    Should Be Equal    ${response5.json()}[id]             ${file_id}  


Abort same upload 2 times

    ${response}    Initiate upload    image_1mb_1_1

    ${response2}    Abort upload

    ${response3}    Abort upload

    Status Should Be    404    ${response3}