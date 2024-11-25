*** Settings ***

Library     BuiltIn
Resource    ../variables/global_variables.robot        
Resource    ../tokens/generate_uploader_token.robot


*** Keywords ***

Create session json

    Generate uploader token

    ${HEADERS}    Create Dictionary
    ...           User=${user_default}
    ...           Authorization=${get_uploader_token} 
    ...           Content-Type=application/json         

    Create Session    URL_base                
    ...               ${URL_base_upload}${domain}    
    ...               headers=${HEADERS}    


Create session form-data

    Generate uploader token

    ${HEADERS}    Create Dictionary                    
    ...           User=${user_default}                 
    ...           Authorization=${get_uploader_token}

    Create Session    URL_base                
    ...               ${URL_base_upload}${domain}    
    ...               headers=${HEADERS}      