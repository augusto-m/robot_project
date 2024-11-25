*** Settings ***

Resource    ../../resources/upload_requests.robot

Test Setup       Initiate upload    image_1mb_1_1

Test Teardown    Abort upload


*** Test Cases ***

Without part

    ${response}    Upload attachment    empty_file_part

    Status Should Be    400


Upload file_id nonexist

    ${response}    Upload attachment    image_1mb_1_1    file_id_arg=${fake_file_id}

    Status Should Be    404


    