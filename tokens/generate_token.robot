*** Settings ***

Library     RequestsLibrary
Library     BuiltIn
Resource    ./token_variables.robot



*** Keywords ***

Generate token

### Setup test
    Create Session    URL_token                   ${URL_token}
    ...               headers=${token_headers}
    ...               disable_warnings=true

### Generate and basic validation of token
    ${Response}    Post On Session        alias=URL_token    url=${token_endpoint}
    ...            data=${client_data}
    ...            expected_status=any

    # Set Suite Variable    ${Response}
    IF                            ${Response.status_code}==200
    Should Be Equal As Strings    ${Response.status_code}               200
    Should Not Be Empty           ${Response.json()["access_token"]}

    ### Set variable token
    Set Global Variable    ${get_token}    ${Response.json()["access_token"]}

    ELSE                           
    Wait Until Keyword Succeeds    5x   1s    Generate token
    END
