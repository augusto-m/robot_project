*** Settings ***

Resource    ../../resources/attachments_requests.robot


*** Test Cases ***

Metadata no exist
    Skip    Falta implementar

Validate details by metadata
    Skip           Flow with bug. Don't return result with metada.
    ${response}    Full upload flow

    ${response}    Update metadata
    ...            meta_keys_arg=MetaKeys${file_id} 
    ...            meta_values_arg=MetaValues${file_id}

    ${response}    Get details for metadata                
    ...            meta_keys_arg=MetaKeys${file_id}
    ...            meta_values_arg=MetaValues${file_id}

