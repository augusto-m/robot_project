*** Settings ***

Resource    ../../resources/upload_requests.robot


*** Test Cases ***

Minimum size limit file

    ${response}    Initiate upload     text_1kb

    ${response2}    Upload attachment    text_1kb

    Status Should Be    204    ${response2}

    ${response3}    Complete upload

    Status Should Be    204    ${response3}


Exceed maximum part size limit

    ${response}    Initiate upload      video_21mb

    ${response2}    Upload attachment                                          video_21mb

    Status Should Be    400    ${response2} 