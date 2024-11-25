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


*** Keywords ***

# ~> Get details

Get details for id

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resGetDetailsId}    Get On Session
    ...                   alias=URL_base                          
    ...                   url=${attachments_api}${file_id_arg}
    ...                   expected_status=any 

    [return]    ${resGetDetailsId} 


Get details for metadata

    Create session json

    [Arguments]    ${meta_keys_arg}=${default_metadata.MetaKeys}    ${meta_values_arg}=${default_metadata.MetaValues}

    ${metadata}    Create Dictionary                
    ...            MetaKeys=${meta_keys_arg}
    ...            MetaValues=${meta_values_arg}    

    ${resDetailsMetadata}    Get On Session
    ...                      alias=URL_base                          
    ...                      url=${get_details_metadata_endpoint}
    ...                      params=${metadata}
    # ...                      expecteddww_status=any

    [return]    ${resDetailsMetadata}


Get details attachment events

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resDetailsAttachEvents}    Get On Session                                                   
    ...                          alias=URL_base                                                   
    ...                          url=${attachments_api}${file_id_arg}${get_events_id_endpoint}
    ...                          expected_status=any

    [return]    ${resDetailsAttachEvents}



# ~> Download

Download direct

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resDownloadDirect}    Get On Session                                                     
    ...                     alias=URL_base                                                     
    ...                     url=${attachments_api}${file_id_arg}${download_direct_endpoint}
    ...                     expected_status=any 

    [return]    ${resDownloadDirect}


Generate download link

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resDownloadLink}    Post On Session                        
    ...                   alias=URL_base
    ...                   url=${download_generate_endpoint}
    ...                   data={"fileIds":["${file_id_arg}"]}
    ...                   expected_status=any 

    [return]    ${resDownloadLink}



# ~> Preview

Preview direct

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resPreviewDirect}    Get On Session 
    ...                    alias=URL_base                                                    
    ...                    url=${attachments_api}${file_id_arg}${preview_direct_endpoint}
    ...                    expected_status=any 

    [return]    ${resPreviewDirect}


Generate preview link

    Create session json 

    [Arguments]    ${file_id_arg}=${file_id}

    ${resPreviewLink}    Post On Session 
    ...                  alias=URL_base                                                      
    ...                  url=${attachments_api}${file_id_arg}${preview_generate_endpoint}
    ...                  expected_status=any 

    [return]    ${resPreviewLink} 


Generate page preview link

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resPagePreview}    Post On Session
    ...                  alias=URL_base
    ...                  url=${attachments_api}${file_id_arg}${page_preview_generate_endpoint}
    ...                  expected_status=any

    [return]    ${resPagePreview}



# ~> Public Link

Generate public link

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resPublicLinkGen}    Post On Session
    ...                    alias=URL_base                                                         
    ...                    url=${attachments_api}${file_id_arg}${publicLink_generate_endpoint}
    ...                    expected_status=any 

    [return]    ${resPublicLinkGen}


Lock public link

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resPublicLinkLock}    Post On Session                                                    
    ...                     alias=URL_base                                                     
    ...                     url=${attachments_api}${file_id_arg}${publicLink_lock_endpoint}
    ...                     expected_status=any 

    [return]    ${resPublicLinkLock}



 # ~> Metadata

Update metadata

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}    ${meta_keys_arg}=metaKeysTest    ${meta_values_arg}=metaValuesTest

    &{metaData}    Create Dictionary
    ...            MetaKeys=${meta_keys_arg}
    ...            MetaValues=${meta_values_arg}

    ${resUpdateMetadata}    Post On Session                                                 
    ...                     alias=URL_base                                                  
    ...                     url=${attachments_api}${file_id_arg}${add_metadata_endpoint}
    ...                     json=${metaData}
    ...                     expected_status=any 

    [return]    ${resUpdateMetadata}



# ~> Delete

Delete attachments

    Create session json

    [Arguments]    ${file_id_arg}=${file_id}

    ${resDeleteAttachment}    Delete On Session                      
    ...                       alias=URL_base                         
    ...                       url=${delete_endpoint}
    ...                       data={"fileIds":["${file_id_arg}"]}
    ...                       expected_status=any 

    [return]    ${resDeleteAttachment}