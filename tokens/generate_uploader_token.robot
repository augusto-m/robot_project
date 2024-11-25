*** Settings ***

Library     RequestsLibrary
Library     BuiltIn
Resource    ./token_variables.robot
Resource    ./generate_token.robot
Resource    ../variables/global_variables.robot



*** Keywords ***

Generate uploader token

    Generate token

    ${HEADERS}    Create Dictionary
    ...           User=${user_default}
    ...           Authorization=Bearer ${get_token}

### Setup test
    Create Session    URL_token                ${URL_base}${domain}
    ...               headers=${HEADERS}
    ...               disable_warnings=true

### Generate and basic validation of token
    ${Response}    Post On Session                 alias=URL_token    url=${token_uploader_endpoint}
    ...            data=${client_data_uploader}
    ...            expected_status=any

    # Set Suite Variable    ${Response}
    IF                            ${Response.status_code}==200
    Should Be Equal As Strings    ${Response.status_code}               200
    Should Not Be Empty           ${Response.json()["token"]}

    ### Set variable token
    Set Global Variable    ${get_uploader_token}    ${Response.json()["token"]}

    ELSE                           
    Wait Until Keyword Succeeds    5x   1s    Generate token
    END