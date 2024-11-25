*** Settings ***

Resource    ../../resources/upload_requests.robot


*** Test Cases ***

Without file name

    ${response}    Initiate upload    empty_file_name

    Status Should Be    400

    Should Not Contain    ${response.json()}    fileId      
    Should Not Contain    ${response.json()}    uploadId  


Without file extension

    ${response}    Initiate upload    empty_file_extension

    Status Should Be    400

    Should Not Contain    ${response.json()}    fileId   
    Should Not Contain    ${response.json()}    uploadId



