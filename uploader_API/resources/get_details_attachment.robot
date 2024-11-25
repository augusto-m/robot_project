*** Settings ***

Library    RequestsLibrary
Library    BuiltIn

Resource    ../../variables/global_variables.robot
Resource    ../../tokens/generate_token.robot                        


*** Keywords ***

Create session json (others)
    Generate token

    ${HEADERS}    Create Dictionary
    ...           User=${user_default}
    ...           Authorization=Bearer ${get_token} 
    ...           Content-Type=application/json         

    Create Session    URL_base                
    ...               ${URL_base}${domain}    
    ...               headers=${HEADERS}  

Get details attachment

    Create session json (others)

    [Arguments]    ${file_id_arg}=${file_id}

    ${resGetDetailsId}    Get On Session
    ...                   alias=URL_base                          
    ...                   url=${attachments_api}${file_id_arg}
    ...                   expected_status=any 

    [return]    ${resGetDetailsId}