*** Settings ***

Library    RequestsLibrary
Library    BuiltIn
Library    Collections

Resource    status_scan.robot
Resource    web_tests.robot
Resource    ../../sessions/sessions.robot
Resource    ../../variables/global_variables.robot                         
Resource    ../../variables/files_variables.robot
Resource    ../../utilities/get_date.robot
Resource    ../../upload_API/resources/upload_requests.robot
Resource    ../../upload_API/resources/upload_split_requests.robot
Resource    ../../attachments_API/resources/attachments_requests.robot


*** Keywords ***

# ~> Download

Generate download link (download_API)

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resDownloadLink}    Post On Session                        
    ...                   alias=URL_base
    ...                   url=${download_generate_endpoint}
    ...                   data={"fileIds":["${file_id_arg}"]}
    ...                   expected_status=any 

    [return]    ${resDownloadLink}



# ~> Preview

Generate preview link (download_API)

    Create session json 

    [Arguments]    ${file_id_arg}=${file_id}

    ${resPreviewLink}    Post On Session 
    ...                  alias=URL_base                                                      
    ...                  url=${URL_base_download}${file_id_arg}${preview_generate_download_API_endpont}
    ...                  expected_status=any 

    [return]    ${resPreviewLink} 


Generate page preview link (download_API)

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resPagePreview}    Post On Session
    ...                  alias=URL_base
    ...                  url=${attachments_api}${file_id_arg}${page_preview_generate_endpoint}
    ...                  expected_status=any

    [return]    ${resPagePreview}



# ~> Public Link

Generate public link (download_API)

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resPublicLinkGen}    Post On Session
    ...                    alias=URL_base                                                         
    ...                    url=${attachments_api}${file_id_arg}${publicLink_generate_endpoint}
    ...                    expected_status=any 

    [return]    ${resPublicLinkGen}