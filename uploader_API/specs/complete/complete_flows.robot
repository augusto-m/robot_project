*** Settings ***

Resource    ../../resources/upload_requests.robot


*** Test Cases ***


Complete file_id nonexist

    ${response}    Initiate upload    image_1mb_1_1

    ${response2}    Upload attachment    image_1mb_1_1

    ${response3}    Complete upload    file_id_arg=${fake_file_id}

    Status Should Be    404    ${response3}

    ${response4}    Abort upload


Upload upload_id nonexist

    ${response}    Initiate upload    image_1mb_1_1

    ${response2}    Upload attachment    image_1mb_1_1

    ${response3}    Complete upload    upload_id_arg=${fake_upload_id}

    Status Should Be    400    ${response3}

    ${response4}    Abort upload


Complete without file uploaded

    ${response}    Initiate upload    image_1mb_1_1

    ${response2}    Complete upload

    Status Should Be    400    ${response2}

    ${response4}    Abort upload

    Status Should Be    204    ${response2}


Complete after try upload file exceed maximum size limit

    ${response}    Initiate upload    video_21mb

    ${response2}    Upload attachment    video_21mb

    ${response3}    Complete upload

    Status Should Be    400    ${response3}

    ${response4}    Abort upload

    Status Should Be    204    ${response2}


Complete same upload 2 times

    ${response}    Initiate upload    image_1mb_1_1

    ${response2}    Upload attachment    image_1mb_1_1

    ${response3}    Complete upload

    ${response4}    Complete upload

    Status Should Be    400    ${response4}