*** Settings ***

Library     BuiltIn
Resource    ../variables/global_variables.robot    
Resource    ../tokens/generate_token.robot


*** Keywords ***

Create session json
    Generate token

    ${HEADERS}    Create Dictionary
    ...           User=${user_default}
    ...           Authorization=Bearer ${get_token} 
    ...           Content-Type=application/json         

    Create Session    URL_base                
    ...               ${URL_base}${domain}    
    ...               headers=${HEADERS}          


Create session form-data
    Generate token

    ${HEADERS}    Create Dictionary                    
    ...           User=${user_default}                            
    ...           Authorization=Bearer ${get_token}

    Create Session    URL_base                
    ...               ${URL_base}${domain}    
    ...               headers=${HEADERS}          