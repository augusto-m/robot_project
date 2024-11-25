*** Settings ***

Library    RequestsLibrary
Library    OperatingSystem
Library    BuiltIn

Resource    upload_split_requests.robot
Resource    ../../sessions/sessions.robot
Resource    ../../attachments_API/resources/attachments_requests.robot
Resource    ../../variables/global_variables.robot                             
Resource    ../../variables/files_variables.robot
Resource    ../../variables/files_variables_split.robot


*** Keywords ***

Initiate upload

    Create session json

    [Arguments]    ${file}=image_280kb

    ${resInitiate}    Post On Session
    ...               alias=URL_base
    ...               url=${initiate_endpoint}
    ...               data={"FileName":"${${file}.name}"}
    ...               expected_status=any                    

    ${file_id}      Get Variable Value    ${resInitiate.json()["fileId"]}
    ${upload_id}    Get Variable Value    ${resInitiate.json()["uploadId"]}

    Set Global Variable    ${file_id}
    Set Suite Variable     ${upload_id}

    [return]    ${resInitiate} 



Upload attachment

    Create session form-data    

    [Arguments]    ${file}=image_280kb    ${file_id_arg}=${file_id}    ${upload_id_arg}=${upload_id}

    ${getFile}    Get Binary File    ${${file}.path}    

    ${bodyUpload}    Create Dictionary             
    ...              FileId=${file_id_arg}
    ...              UploadId=${upload_id_arg}     
    ...              Data=${getFile}
    ...              PartNumber=${${file}.part}

    ${resUpload}    Post On Session           
    ...             alias=URL_base            
    ...             url=${upload_endpoint}    
    ...             data=${bodyUpload}        
    ...             files=${bodyUpload}
    ...             expected_status=any

    [return]    ${resUpload}    



Complete upload

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}    ${upload_id_arg}=${upload_id}

    ${resComplete}    Post On Session
    ...               alias=URL_base 
    ...               url=${complete_endpoint}                                           
    ...               data={"FileId":"${file_id_arg}", "UploadId":"${upload_id_arg}"}
    ...               expected_status=any

    [return]    ${resComplete}    



Abort upload

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}    ${upload_id_arg}=${upload_id}

    ${resAbort}    Post On Session 
    ...            alias=URL_base 
    ...            url=${abort_endpoint}                                              
    ...            data={"FileId":"${file_id_arg}", "UploadId":"${upload_id_arg}"}
    ...            expected_status=any

    [return]    ${resAbort}    



### ----------------------------------------------------------------------------------------------------------------------------------------------------
### ----------------------------------------------------------------------------------------------------------------------------------------------------
### Full upload requests no wait scan
### ----------------------------------------------------------------------------------------------------------------------------------------------------
### ----------------------------------------------------------------------------------------------------------------------------------------------------


Full upload flow

    [Arguments]          ${file_arg_full}=image_1mb_1_1    
    Initiate upload      ${file_arg_full}                  
    Upload attachment    ${file_arg_full} 
    Complete upload


Full upload flow (large file)

    Initiate upload                     video_21mb_1_4
    Upload stream parts various size
    Complete upload


Full upload flow (21mb size image)

    Initiate upload                  image_21mb_1_7
    Upload stream 21mb size image
    Complete upload


Full upload flow (smaller than 1mb split)

    Initiate upload                        image_1mb_1_2
    Upload stream file smaller than 1mb
    Complete upload



### ----------------------------------------------------------------------------------------------------------------------------------------------------
### ----------------------------------------------------------------------------------------------------------------------------------------------------
### Full upload requests with wait scan
### ----------------------------------------------------------------------------------------------------------------------------------------------------
### ----------------------------------------------------------------------------------------------------------------------------------------------------


Full upload flow with wait scan

    [Arguments]                    ${file_arg_full}=image_1mb_1_1    
    Initiate upload                ${file_arg_full}                  
    Upload attachment              ${file_arg_full} 
    Complete upload
    Wait Until Keyword Succeeds    ${timesRun}                       ${timeWait}    Validate status scan 


Full upload flow with wait scan (large file)

    Initiate upload                     video_21mb_1_4
    Upload stream parts various size
    Complete upload
    Wait Until Keyword Succeeds         ${timesRun}       ${timeWait}    Validate status scan 


Full upload flow with wait scan (21mb size image)

    Initiate upload                  image_21mb_1_7
    Upload stream 21mb size image
    Complete upload
    Wait Until Keyword Succeeds      ${timesRun}       ${timeWait}    Validate status scan 


Full upload flow with wait scan (smaller than 1mb split)

    Initiate upload                        image_1mb_1_2
    Upload stream file smaller than 1mb
    Complete upload
    Wait Until Keyword Succeeds            ${timesRun}      ${timeWait}    Validate status scan